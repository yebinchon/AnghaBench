; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_update_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_update_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Could not get link flags: %m\00", align 1
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Flags change:%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LOOPBACK\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"MASTER\00", align 1
@IFF_MASTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"SLAVE\00", align 1
@IFF_SLAVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"DORMANT\00", align 1
@IFF_DORMANT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"LOWER_UP\00", align 1
@IFF_LOWER_UP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"RUNNING\00", align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"MULTICAST\00", align 1
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"BROADCAST\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"POINTOPOINT\00", align 1
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"PROMISC\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"ALLMULTI\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"PORTSEL\00", align 1
@IFF_PORTSEL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"AUTOMEDIA\00", align 1
@IFF_AUTOMEDIA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@IFF_DYNAMIC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"NOARP\00", align 1
@IFF_NOARP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"NOTRAILERS\00", align 1
@IFF_NOTRAILERS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"ECHO\00", align 1
@IFF_ECHO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"Unknown link flags gained: %#.5x (ignoring)\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Unknown link flags lost: %#.5x (ignoring)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @link_update_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_update_flags(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_7__* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @sd_rtnl_message_link_get_flags(i32* %16, i32* %8)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @log_link_warning_errno(%struct.TYPE_7__* %21, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %254

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @IFLA_OPERSTATE, align 4
  %27 = call i32 @sd_netlink_message_read_u8(i32* %25, i32 %26, i64* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %254

50:                                               ; preds = %43, %37, %34
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %245

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = load i32, i32* @IFF_LOOPBACK, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i32 %62)
  %64 = load i32, i32* @IFF_MASTER, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67, i32 %68)
  %70 = load i32, i32* @IFF_SLAVE, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %73, i32 %74)
  %76 = load i32, i32* @IFF_UP, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %79, i32 %80)
  %82 = load i32, i32* @IFF_DORMANT, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %82, i32 %85, i32 %86)
  %88 = load i32, i32* @IFF_LOWER_UP, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %91, i32 %92)
  %94 = load i32, i32* @IFF_RUNNING, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %94, i32 %97, i32 %98)
  %100 = load i32, i32* @IFF_MULTICAST, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* @IFF_BROADCAST, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %106, i32 %109, i32 %110)
  %112 = load i32, i32* @IFF_POINTOPOINT, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %112, i32 %115, i32 %116)
  %118 = load i32, i32* @IFF_PROMISC, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %118, i32 %121, i32 %122)
  %124 = load i32, i32* @IFF_ALLMULTI, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %124, i32 %127, i32 %128)
  %130 = load i32, i32* @IFF_PORTSEL, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %130, i32 %133, i32 %134)
  %136 = load i32, i32* @IFF_AUTOMEDIA, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %136, i32 %139, i32 %140)
  %142 = load i32, i32* @IFF_DYNAMIC, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %142, i32 %145, i32 %146)
  %148 = load i32, i32* @IFF_NOARP, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %148, i32 %151, i32 %152)
  %154 = load i32, i32* @IFF_NOTRAILERS, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %154, i32 %157, i32 %158)
  %160 = load i32, i32* @IFF_DEBUG, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %160, i32 %163, i32 %164)
  %166 = load i32, i32* @IFF_ECHO, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @FLAG_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %166, i32 %169, i32 %170)
  %172 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @log_link_debug(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %69, i32 %75, i32 %81, i32 %87, i32 %93, i32 %99, i32 %105, i32 %111, i32 %117, i32 %123, i32 %129, i32 %135, i32 %141, i32 %147, i32 %153, i32 %159, i32 %165, i32 %171)
  %173 = load i32, i32* @IFF_LOOPBACK, align 4
  %174 = load i32, i32* @IFF_MASTER, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @IFF_SLAVE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @IFF_UP, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @IFF_DORMANT, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @IFF_LOWER_UP, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @IFF_RUNNING, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @IFF_MULTICAST, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @IFF_BROADCAST, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @IFF_POINTOPOINT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IFF_PROMISC, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @IFF_ALLMULTI, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @IFF_PORTSEL, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @IFF_AUTOMEDIA, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @IFF_DYNAMIC, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @IFF_NOARP, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @IFF_NOTRAILERS, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @IFF_DEBUG, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @IFF_ECHO, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  store i32 %210, i32* %11, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = xor i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* %11, align 4
  %219 = and i32 %217, %218
  store i32 %219, i32* %9, align 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = xor i32 %222, %223
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %224, %227
  %229 = load i32, i32* %11, align 4
  %230 = and i32 %228, %229
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %56
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @log_link_debug(%struct.TYPE_7__* %234, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %233, %56
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %242 = load i32, i32* %10, align 4
  %243 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @log_link_debug(%struct.TYPE_7__* %241, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %240, %237
  br label %245

245:                                              ; preds = %244, %50
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  %249 = load i64, i64* %12, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %253 = call i32 @link_update_operstate(%struct.TYPE_7__* %252, i32 1)
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %245, %49, %20
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @sd_rtnl_message_link_get_flags(i32*, i32*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_read_u8(i32*, i32, i64*) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @FLAG_STRING(i8*, i32, i32, i32) #1

declare dso_local i32 @link_update_operstate(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
