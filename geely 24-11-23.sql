-- --------------------------------------------------------
-- Host:                         therestpos.com
-- Server version:               5.7.43-cll-lve - MySQL Community Server - (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for geely_db1
CREATE DATABASE IF NOT EXISTS `geely_db1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `geely_db1`;

-- Dumping structure for table geely_db1.route
DROP TABLE IF EXISTS `route`;
CREATE TABLE IF NOT EXISTS `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `route` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `process` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `update` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `export` tinyint(4) NOT NULL DEFAULT '0',
  `print` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.route: ~80 rows (approximately)
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES
	(1, 'admin', 'Admin', 'admin/userrole.php', 'Userrole', 'Userrole Entry', 1, 0, 0, 0, 0, 0),
	(2, 'admin', 'Admin', 'admin/userrole.php?act=edit&dashboard=&name=', 'Userrole', 'Userrole Edit', 0, 0, 1, 0, 0, 0),
	(3, 'admin', 'Admin', 'admin/userrolelist.php', 'Userrole', 'Userrole List', 0, 1, 0, 1, 0, 0),
	(4, 'admin', 'Admin', 'admin/createaccount.php', 'User Define', 'Create New User', 1, 0, 0, 0, 0, 0),
	(5, 'admin', 'Admin', 'admin/userlist.php', 'User Define', 'User List', 0, 1, 0, 1, 0, 0),
	(6, 'admin', 'Admin', 'admin/createaccount.php?act=edit&id=', 'User Define', 'User Edit', 0, 0, 1, 0, 0, 0),
	(9, 'hr', 'HR', 'hr/staff.php', 'Staff', 'Staff Entry', 1, 0, 0, 0, 0, 0),
	(16, 'sales', 'Logistic', 'supply_chain/production_order.php', 'Production Order', 'Production Order Entry', 1, 0, 0, 0, 0, 0),
	(17, 'sales', 'Logistic', 'supply_chain/car_stock.php', 'Car Stock', 'Car Stock Entry', 1, 0, 0, 0, 0, 0),
	(18, 'supply_chain', 'Logistic', 'supply_chain/supply_chain.php', 'Supply Chain Transfer', 'Supply Chain Entry', 1, 0, 0, 0, 0, 0),
	(19, 'supply_chain', 'Logistic', 'supply_chain/car_stock_transfer.php', 'Car Stock Transfer', 'Car Stock Transfer Entry', 1, 0, 0, 0, 0, 0),
	(20, 'finance', 'Finance', 'finance/define_price_production_car.php', 'Define Purchase Price', 'Purchase Price Entry', 1, 0, 0, 0, 0, 0),
	(21, 'finance', 'Finance', 'finance/car_price.php', 'Car Price', 'Car Price Entry', 1, 1, 1, 0, 0, 0),
	(22, 'sales', 'Logistic', 'supply_chain/grade.php', 'New Model', 'Grade Entry', 1, 1, 0, 0, 0, 0),
	(23, 'sales', 'Logistic', 'supply_chain/car_list.php', 'Car List', 'Car List Entry', 1, 1, 1, 0, 0, 0),
	(24, 'sales', 'Logistic', 'supply_chain/test_drive_car.php', 'Test Drive Car', 'Test Drive Car Entry', 1, 1, 0, 1, 0, 0),
	(25, 'sales', 'Logistic', 'supply_chain/brand.php', 'Brand', 'Brand Entry', 1, 1, 0, 0, 0, 0),
	(26, 'sales', 'Logistic', 'supply_chain/model.php', 'Model', 'Model Entry', 1, 1, 0, 0, 0, 0),
	(28, 'supply_chain', 'Logistic', 'upload/upload_interior_color.php?for=interior&id=', 'Upload Interior Photo', 'Upload Interior Photo', 1, 1, 0, 1, 0, 0),
	(29, 'supply_chain', 'Logistic', 'upload/upload_exterior_color.php?for=exterior&id=', 'Upload Exterior Photo', 'Upload Exterior Photo', 1, 1, 0, 1, 0, 0),
	(30, 'finance', 'Finance', 'finance/rtad_tax_change.php', 'RTAD Tax', 'RTAD Tax Update', 1, 0, 0, 0, 0, 0),
	(32, 'hr', 'Sales', 'sales/showroom_assign.php', 'Showroom Assign', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(33, 'sales', 'Sales', 'sales/showroom_assign.php', 'Showroom Assign', 'Showroom Assign', 1, 1, 0, 1, 0, 0),
	(34, 'sales', 'Sales', 'sales/customer_list.php', 'Customer Detail', 'Customer Detail List', 0, 1, 0, 0, 0, 0),
	(35, 'sales', 'Sales', 'sales/customer.php', 'Customer Detail', 'Customer Detail Entry', 1, 0, 0, 0, 0, 0),
	(36, 'sales', 'Sales', 'sales/customer.php?act=detail&rid=', 'Customer Detail', 'Customer Detail View', 0, 1, 0, 0, 0, 0),
	(37, 'sales', 'Sales', 'sales/customer.php?act=edit&cid=', 'Customer Detail', 'Customer Detail Edit', 0, 0, 1, 0, 0, 0),
	(38, 'sales', 'Sales', 'sales/order.php?act=entry&cid=', 'Order Detail', 'Order Detail Entry', 1, 0, 0, 0, 0, 0),
	(39, 'sales', 'Sales', 'sales/broker.php', 'Broker', 'Broker Entry', 1, 0, 0, 0, 0, 0),
	(40, 'sales', 'Sales', 'admin/broker.php?act=edit&bid=', 'Broker', 'Broker Edit', 0, 0, 1, 0, 0, 0),
	(41, 'sales', 'Payment Config', 'payment_config/promotion.php', 'Promotion', 'Promotion Entry', 1, 0, 0, 0, 0, 0),
	(42, 'sales', 'Sales', 'sales/se_assign.php', 'SE Assign', 'SE Assign', 1, 1, 0, 1, 0, 0),
	(43, 'sales', 'Sales', 'sales/order_processing_list.php', 'Order Detail', 'Order Detail List', 0, 1, 1, 0, 0, 0),
	(44, 'sales', 'Sales', 'sales/order_edit.php?act=edit&oc_no=', 'Order Detail', 'Order Detail Edit', 0, 1, 1, 0, 0, 0),
	(45, 'finance', 'Sales', 'sales/order_processing_list.php', 'Order Detail', 'Order Detail List', 0, 1, 1, 0, 0, 0),
	(46, 'finance', 'Sales', 'sales/order_edit.php?act=edit&oc_no=', 'Order Detail', 'Order Detail Edit', 0, 1, 1, 0, 0, 0),
	(47, 'sales', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(48, 'supply_chain', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(49, 'finance', 'Sales', 'sales/deposit_collect.php?act=edit&oc_no=', '2. Deposit Collect', 'Deposit Collect', 1, 1, 0, 0, 0, 0),
	(50, 'finance', 'Sales', 'sales/payment.php?act=edit&oc_no=', '3. Payment', 'Payment', 1, 1, 0, 0, 0, 0),
	(51, 'supply_chain', 'Sales', 'sales/supply_chain.php?act=edit&oc_no=', '4. Purchase Permit | RTA Appointment | Plate No.', 'Purchase Permit | RTA Appointment | Plate No.', 1, 1, 1, 1, 1, 0),
	(52, 'sales', 'Sales', 'sales/owner.php?act=edit&oc_no=', '5. Owner Info | Income Tax', 'Owner Info | Income Tax', 1, 1, 1, 1, 1, 0),
	(53, 'service', 'Sales', 'sales/fill_fuel.php?act=edit&oc_no=', '6. Fill the Fuel', 'Fill the Fuel', 1, 1, 0, 0, 0, 0),
	(54, 'service', 'Sales', 'sales/pdi_check_list.php?act=edit&oc_no=', '7. PDI Check List', 'PDI Check List', 1, 1, 0, 0, 0, 0),
	(55, 'service', 'Sales', 'sales/ready_to_deliver.php?act=edit&oc_no=', '8. Ready to Deliver', 'Ready to Deliver', 1, 1, 0, 0, 0, 0),
	(56, 'sales', 'Sales', 'sales/sales.php?act=edit&oc_no=', '9. Car Handover | Owner Book Handover', 'Car Handover | Owner Book Handover', 1, 1, 0, 0, 0, 0),
	(58, 'sales', 'Sales', 'sales/order_confirmation.php?act=entry&oc_no=', 'Order Confirmation', 'Order Confirmation Entry', 1, 0, 0, 0, 0, 0),
	(60, 'hr', 'HR', 'hr/approval_assign.php', 'Approval Assign', 'Approval Assign', 1, 1, 0, 1, 0, 0),
	(62, 'admin', 'Admin', 'admin/due_date_setting.php', 'Due Date Setting', 'Due Date Setting', 0, 1, 1, 0, 0, 0),
	(64, 'hr', 'HR', 'reports/staff.php', 'Staff Report', 'Staff Report', 0, 1, 1, 0, 1, 0),
	(65, 'service', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(66, 'finance', 'Sales', 'sales/sales_list.php', '1. Sales List', 'Sales List', 0, 1, 0, 0, 0, 0),
	(67, 'service', 'Service', 'service/promotion.php', 'Service Promotion', 'Service Promotion Entry', 1, 0, 0, 0, 0, 0),
	(68, 'service', 'Service', 'service/service_package.php', 'Service Package', 'Service Package Entry', 1, 0, 0, 0, 0, 0),
	(69, 'service', 'Service', 'service/service_item.php', 'Service Item', 'Service Item Entry', 1, 1, 1, 0, 0, 0),
	(70, 'service', 'Service', 'service/service_item_task.php', 'Service Item Task', 'Service Item Task Entry', 1, 1, 1, 0, 0, 0),
	(71, 'service', 'Service', 'service/service_center_bay.php', 'Service Center Bay', 'Service Center Bay Entry', 1, 1, 0, 0, 0, 0),
	(72, 'service', 'Service', 'service/service_bay_services.php', 'Service Bay Services', 'Service Bay Services Entry', 1, 1, 1, 0, 0, 0),
	(73, 'service', 'Service', 'service/service_center_store.php', 'Service Center Store', 'Service Center Store Entry', 1, 1, 0, 0, 0, 0),
	(74, 'finance', 'Finance', 'finance/exchange_rate.php', 'Exchange Rate', 'Exchange Rate Entry', 1, 1, 0, 0, 0, 0),
	(75, 'finance', 'Finance', 'finance/bank_account.php', 'Bank Account', 'Bank Account Entry', 1, 1, 0, 0, 0, 0),
	(76, 'finance', 'Finance', 'finance/bank_account_transfer.php', 'Bank Account Transfer', 'Bank Account Transfer', 1, 1, 0, 0, 0, 0),
	(77, 'finance', 'Finance', 'finance/account_transaction.php', 'Account Transaction', 'Account Transaction', 0, 1, 0, 0, 0, 0),
	(78, 'finance', 'Finance', 'finance/bank_account_transfer.php?act=entry&accno=', 'Bank Account Transfer', 'Bank Account Transfer', 1, 1, 0, 0, 0, 0),
	(79, 'finance', 'Finance', 'finance/gl_account.php', 'G/L Account', 'G/L Account', 1, 1, 0, 0, 0, 0),
	(80, 'finance', 'Finance', 'finance/advance.php', 'Advance Entry', 'Advance Entry', 1, 0, 0, 0, 0, 0),
	(81, 'finance', 'Finance', 'finance/account_transfer.php', 'Account Transfer', 'Account Transfer', 1, 0, 0, 0, 0, 0),
	(82, 'finance', 'Finance', 'finance/account_transaction.php?act=detail&glcode=', 'Account Transaction', 'Account Transaction', 0, 1, 0, 0, 0, 0),
	(83, 'finance', 'Finance', 'finance/invoices.php', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(84, 'finance', 'Finance', 'finance/invoice_detail.php?act=detail&ivn=', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(85, 'finance', 'Sales', 'reports/sales_finance.php', 'Sales Report', 'Sales Report', 0, 1, 0, 0, 0, 0),
	(86, 'finance', 'Finance', 'finance/deposit_refund.php?act=entry&oc_no=', 'Deposit Refund', 'Deposit Refund', 1, 0, 0, 0, 0, 0),
	(87, 'finance', 'Finance', 'finance/advance_claim.php', 'Advance Claim', 'Advance Claim', 1, 0, 0, 0, 0, 0),
	(88, 'finance', 'Finance', 'sales/sales_detail.php?act=detail&oc_no=', 'Sales Detail', 'Sales Detail', 0, 1, 0, 0, 0, 0),
	(89, 'service', 'Sparepart', 'sparepart/store.php', 'Store', 'Store Entry', 1, 1, 0, 0, 0, 0),
	(90, 'service', 'Sparepart', 'sparepart/sub_store.php', 'Sub Store', 'Sub Store Entry', 1, 1, 0, 0, 0, 0),
	(91, 'service', 'Sparepart', 'sparepart/store_stock_level.php', 'Store Stock Level', 'Store Stock Level Entry', 1, 1, 0, 0, 0, 0),
	(92, 'service', 'Sparepart', 'sparepart/group.php', 'Group', 'Group Entry', 1, 1, 0, 0, 0, 0),
	(93, 'service', 'Sparepart', 'sparepart/sub_group.php', 'Sub Group', 'Sub Group Entry', 1, 1, 0, 0, 0, 0),
	(94, 'service', 'Sparepart', 'sparepart/sparepart.php', 'Sparepart', 'Sparepart Entry', 1, 0, 0, 0, 0, 0),
	(96, 'service', 'Sparepart', 'upload/upload_sparepart.php?for=sparepart&code=', 'Upload Sparepart Photo', 'Upload Sparepart Photo', 1, 1, 0, 0, 0, 0),
	(97, 'service', 'Sparepart', 'sparepart/sparepart.php?act=edit&code=', 'Sparepart', 'Sparepart Edit', 0, 0, 1, 0, 0, 0),
	(98, 'service', 'Sparepart', 'reports/sparepart.php', 'Sparepart', 'Sparepart Report', 0, 1, 0, 0, 0, 0),
	(99, 'service', 'Service', 'service/promotion.php?act=edit&id=', 'Service Promotion', 'Service Promotion Edit', 0, 0, 1, 0, 0, 0),
	(100, 'service', 'Service', 'reports/service_promotion.php', 'Service Promotion', 'Service Promotion Report', 0, 1, 0, 0, 0, 0),
	(101, 'service', 'Service', 'service/survey.php', 'Survey', 'Survey Entry', 1, 0, 0, 0, 0, 0),
	(102, 'service', 'Service', 'reports/service_customer.php', 'Service Customer', 'Service Customer Report', 0, 1, 0, 0, 0, 0),
	(103, 'service', 'Service', 'service/service_customer_car.php?act=entry&id=', 'Service Customer Car', 'Service Customer Car Entry', 1, 0, 0, 0, 0, 0),
	(104, 'service', 'Service', 'service/service_car.php?act=entry&cid=', 'Service Car', 'Service Car Entry', 1, 0, 0, 0, 0, 0),
	(105, 'service', 'Service', 'service/service_car.php', 'Service Car', 'Service Car Entry', 1, 0, 0, 0, 0, 0),
	(106, 'service', 'Service', 'reports/service_car.php', 'Service Car', 'Service Car Report', 0, 1, 0, 0, 0, 0),
	(107, 'service', 'Service', 'service/service_appointment_list.php', 'Service Appointment', 'Service Appointment List', 0, 1, 0, 0, 0, 0),
	(108, 'service', 'Service', 'service/service_appointment.php', 'Service Appointment', 'Service Appointment Entry', 1, 0, 0, 0, 0, 0),
	(109, 'service', 'Service', 'service/inspection.php?act=entry&id=', 'Inspection', 'Inspection Entry', 1, 0, 0, 0, 0, 0),
	(110, 'service', 'Service', 'service/inspection.php?act=edit&id=', 'Inspection', 'Inspection Edit', 0, 0, 1, 0, 0, 0),
	(111, 'service', 'Service', 'service/servicing_list.php', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(112, 'service', 'Service', 'service/service.php?act=entry&id=', 'Service', 'Service Entry', 1, 0, 0, 0, 0, 0),
	(113, 'service', 'Service', 'service/service.php?act=edit&id=', 'Service', 'Service Edit', 0, 0, 1, 0, 0, 0),
	(114, 'service', 'Service', 'service/service_customer.php?act=entry&s=', 'Service Customer', 'Service Customer Entry', 1, 0, 0, 0, 0, 0),
	(115, 'service', 'Service', 'service/job_card.php?act=entry&id=', 'Job Card', 'Job Card', 1, 0, 0, 0, 0, 0),
	(116, 'service', 'Service', 'service/final_inspection.php?act=entry&id=', 'Final Inspection', 'Final Inspection Entry', 1, 0, 0, 0, 0, 0),
	(117, 'service', 'Sparepart', 'service/issue_note.php?act=entry&id=', 'Issue Note', 'Issue Note', 0, 1, 0, 0, 0, 0),
	(118, 'service', 'Sparepart', 'sparepart/sparepart_issue_note.php', 'Issue Note', 'Issue Note Entry', 1, 0, 0, 0, 0, 0),
	(119, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php', 'Waiting List', 'Waiting List', 0, 1, 0, 0, 0, 0),
	(120, 'service', 'Service', 'reports/warranty_car.php', 'Warranty Car', 'Warranty Car Report', 0, 1, 0, 0, 0, 0),
	(121, 'service', 'Service', 'reports/service.php', 'Service', 'Service Report', 0, 1, 0, 0, 0, 0),
	(122, 'service', 'Sparepart', 'sparepart/sp_waiting_list.php', 'Waiting List', 'Waiting List', 0, 1, 0, 0, 0, 0),
	(123, 'service', 'Sparepart', 'sparepart/sparepart_pre_order.php?act=entry&id=', 'Pre Order', 'Pre Order Entry', 1, 0, 0, 0, 0, 0),
	(124, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php', 'Waiting List', 'Waiting List', 1, 0, 0, 0, 0, 0),
	(125, 'service', 'Sparepart', 'sparepart/sparepart_waiting_list.php?act=edit&id=', 'Waiting List', 'Waiting List', 0, 0, 1, 0, 0, 0),
	(126, 'service', 'Sparepart', 'sparepart/sparepart_order.php', 'Order', 'Order Entry', 1, 0, 0, 0, 0, 0),
	(127, 'service', 'Sparepart', 'sparepart/sparepart_pre_order.php?act=detail&id=', 'Pre Order', 'Pre Order Detail', 0, 1, 0, 0, 0, 0),
	(128, 'service', 'Sparepart', 'sparepart/sparepart_receiving.php', 'Receiving', 'Receiving Entry', 1, 0, 0, 0, 0, 0),
	(129, 'service', 'Sparepart', 'sparepart/sparepart_stock_out.php', 'Stock Out', 'Stock Out Entry', 1, 1, 0, 1, 0, 0),
	(130, 'service', 'Sparepart', 'sparepart/sparepart_stock_transfer.php', 'Stock Transfer', 'Stock Transfer Entry', 1, 0, 0, 0, 0, 0),
	(131, 'service', 'Sparepart', 'sparepart/sparepart_stock_receive.php', 'Stock Receive', 'Stock Receive Entry', 1, 0, 0, 0, 0, 0),
	(132, 'service', 'Sparepart', 'sparepart/sparepart_stock_return.php', 'Stock Return', 'Stock Return Entry', 1, 0, 0, 0, 0, 0),
	(133, 'sales', 'Sales', 'print/order_confirmation_print.php?act=print&oc_no=', 'Order Confirmation', 'Order Confirmation Print', 0, 0, 0, 0, 0, 1),
	(134, 'service', 'Service', 'service/service_center_assign.php', 'Service Center Assign', 'Service Center Assign Entry', 1, 1, 1, 0, 0, 0),
	(135, 'finance', 'Sparepart', 'finance/sparepart_pre_order_list.php', 'Pre Order List', 'Pre Order List', 0, 1, 0, 0, 0, 0),
	(136, 'finance', 'Sparepart', 'finance/sparepart_pre_order_payment.php?act=entry&id=', 'Pre Order Payment', 'Pre Order Payment Entry', 1, 1, 0, 0, 0, 0),
	(137, 'finance', 'Service', 'finance/servicing_list.php', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(138, 'finance', 'Service', 'finance/servicing_detail.php?act=detail&id=', 'Servicing List', 'Servicing List', 0, 1, 0, 0, 0, 0),
	(139, 'finance', 'Finance', 'finance/invoice_detail_service.php?act=detail&id=', 'Invoices', 'Invoices', 0, 1, 0, 0, 0, 0),
	(140, 'finance', 'Finance', 'service/exist_form.php?act=entry&id=', 'Exist Form', 'Exist Form', 0, 1, 0, 0, 0, 0),
	(141, 'sales', 'Sales', 'reports/sales_s.php', 'Sales Report', 'Sales Report', 0, 1, 0, 0, 1, 0),
	(142, 'sales', 'Sales', 'reports/order_s.php', 'Order Report', 'Order Report', 0, 1, 0, 0, 1, 0),
	(143, 'sales', 'Sales', 'reports/customer_s.php', 'Customer Report', 'Customer Report', 0, 1, 0, 0, 1, 0),
	(144, 'sales', 'Sales', 'sales/sales_detail.php?act=detail&oc_no=', 'Sales Detail', 'Sales Detail', 0, 1, 0, 0, 0, 0),
	(145, 'sales', 'Sales', 'sales/order_detail.php?act=detail&oc_no=', 'Order Detail', 'Order Detail', 0, 1, 0, 0, 0, 0),
	(146, 'sales', 'Test Drive', 'test_drive/test_drive_booking.php?act=entry&cid=', 'Test Drive Booking', 'Test Drive Booking Entry', 1, 0, 1, 0, 0, 0),
	(147, 'sales', 'Test Drive', 'test_drive/terms_conditions.php?act=entry&id=', 'Test Drive Terms Conditions', 'Test Drive Terms Conditions Entry', 1, 0, 0, 0, 0, 0),
	(148, 'sales', 'Test Drive', 'test_drive/test_drive_log.php?act=entry&id=', 'Test Drive Log', 'Test Drive Log Entry', 1, 1, 0, 0, 0, 0),
	(149, 'sales', 'Test Drive', 'test_drive/test_drive_result_list.php', 'Test Drive Result List', 'Test Drive Result List', 0, 1, 1, 0, 0, 0),
	(150, 'sales', 'Test Drive', 'test_drive/test_drive_booking_list.php', 'Test Drive Booking List', 'Test Drive Booking List', 0, 1, 1, 0, 0, 0),
	(151, 'sales', 'Test Drive', 'test_drive/test_drive_booking.php?act=edit&id=', 'Test Drive Booking', 'Test Drive Booking Edit', 0, 0, 0, 0, 0, 0),
	(152, 'sales', 'Logistic', 'reports/car_stock.php', 'Car Stock Report', 'Car Stock Report', 0, 1, 0, 0, 1, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
