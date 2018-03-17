//
//  Campaigns.swift
//  Patreon
//
//  Created by Foti Dim on 17.03.18.
//  Copyright © 2018 FotiDim. All rights reserved.
//

public struct Campaigns: Codable {
    struct Data: Codable {
        struct Attributes: Codable {
            let createdAt: String
            let creationCount: Int
            let creationName: String
            let discordServerId: Int?
            let displayPatronGoals: Bool
            let earningsVisibility: String
            let imageSmallUrl: String?
            let imageUrl: String?
            let isChargedImmediately: Bool
            let isMonthly: Bool
            let isNsfw: Bool
            let isPlural: Bool
            let mainVideoEmbed: String?
            let mainVideoUrl: String?
            let oneLiner: String?
            let outstandingPaymentAmountCents: Int
            let patronCount: Int
            let payPerName: String?
            let pledgeSum: Int
            let pledgeUrl: String
            let publishedAt: String
            let summary: String?
            let thanksEmbed: String?
            let thanksMsg: String?
            let thanksVideoUrl: String?
            private enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case creationCount = "creation_count"
                case creationName = "creation_name"
                case discordServerId = "discord_server_id"
                case displayPatronGoals = "display_patron_goals"
                case earningsVisibility = "earnings_visibility"
                case imageSmallUrl = "image_small_url"
                case imageUrl = "image_url"
                case isChargedImmediately = "is_charged_immediately"
                case isMonthly = "is_monthly"
                case isNsfw = "is_nsfw"
                case isPlural = "is_plural"
                case mainVideoEmbed = "main_video_embed"
                case mainVideoUrl = "main_video_url"
                case oneLiner = "one_liner"
                case outstandingPaymentAmountCents = "outstanding_payment_amount_cents"
                case patronCount = "patron_count"
                case payPerName = "pay_per_name"
                case pledgeSum = "pledge_sum"
                case pledgeUrl = "pledge_url"
                case publishedAt = "published_at"
                case summary
                case thanksEmbed = "thanks_embed"
                case thanksMsg = "thanks_msg"
                case thanksVideoUrl = "thanks_video_url"
            }
        }
        let attributes: Attributes
        let id: String
        struct Relationships: Codable {
            struct Creator: Codable {
                struct Data: Codable {
                    let id: String
                    let type: String
                }
                let data: Data
                struct Links: Codable {
                    let related: URL
                }
                let links: Links
            }
            let creator: Creator
            struct Goals: Codable {
                struct Data: Codable {
                    let id: String
                    let type: String
                }
                let data: [Data]
            }
            let goals: Goals
            struct Rewards: Codable {
                struct Data: Codable {
                    let id: String
                    let type: String
                }
                let data: [Data]
            }
            let rewards: Rewards
        }
        let relationships: Relationships
        let type: String
    }
    let data: [Data]
    struct Included: Codable {
        struct Attributes: Codable {
            let about: String?
            let created: String?
            let discordId: String?
            let email: String?
            let facebook: String?
            let facebookId: String?
            let firstName: String?
            let fullName: String?
            let gender: Int?
            let hasPassword: Bool?
            let imageUrl: URL?
            let isDeleted: Bool?
            let isEmailVerified: Bool?
            let isNuked: Bool?
            let isSuspended: Bool?
            let lastName: String?
            struct SocialConnections: Codable {
                let deviantart: String?
                let discord: String?
                let facebook: String?
                let spotify: String?
                let twitch: String?
                let twitter: String?
                let youtube: String?
            }
            let socialConnections: SocialConnections?
            let thumbUrl: URL?
            let twitch: String?
            let twitter: String?
            let url: URL?
            let vanity: String?
            let youtube: String?
            let amount: Int?
            let amountCents: Int?
            let createdAt: String?
            let description: String?
            let id: String?
            let remaining: Int?
            let requiresShipping: Bool?
            let type: String?
            let userLimit: Int?
            private enum CodingKeys: String, CodingKey {
                case about
                case created
                case discordId = "discord_id"
                case email
                case facebook
                case facebookId = "facebook_id"
                case firstName = "first_name"
                case fullName = "full_name"
                case gender
                case hasPassword = "has_password"
                case imageUrl = "image_url"
                case isDeleted = "is_deleted"
                case isEmailVerified = "is_email_verified"
                case isNuked = "is_nuked"
                case isSuspended = "is_suspended"
                case lastName = "last_name"
                case socialConnections = "social_connections"
                case thumbUrl = "thumb_url"
                case twitch
                case twitter
                case url
                case vanity
                case youtube
                case amount
                case amountCents = "amount_cents"
                case createdAt = "created_at"
                case description
                case id
                case remaining
                case requiresShipping = "requires_shipping"
                case type
                case userLimit = "user_limit"
            }
        }
        let attributes: Attributes
        let id: String
        struct Relationships: Codable {
            struct Campaign: Codable {
                struct Data: Codable {
                    let id: String
                    let type: String
                }
                let data: Data
                struct Links: Codable {
                    let related: URL
                }
                let links: Links
            }
            let campaign: Campaign?
            struct Creator: Codable {
                struct Data: Codable {
                    let id: String
                    let type: String
                }
                let data: Data
                struct Links: Codable {
                    let related: URL
                }
                let links: Links
            }
            let creator: Creator?
        }
        let relationships: Relationships
        let type: String
    }
    let included: [Included]
}

