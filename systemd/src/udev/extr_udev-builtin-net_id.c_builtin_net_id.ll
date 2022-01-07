; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_builtin_net_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_builtin_net_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i64, i8*, i8*, i32, i32, i64, i64*, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@NAMING_INFINIBAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ib\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"iflink\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wlan\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wl\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"wwan\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ww\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ID_NET_NAMING_SCHEME\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"%sx%02x%02x%02x%02x%02x%02x\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ID_NET_NAME_MAC\00", align 1
@NET_CCW = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ID_NET_NAME_PATH\00", align 1
@NET_VIO = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"ID_NET_NAME_SLOT\00", align 1
@NET_PLATFORM = common dso_local global i64 0, align 8
@NET_NETDEVSIM = common dso_local global i64 0, align 8
@NET_PCI = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"ID_NET_NAME_ONBOARD\00", align 1
@NAMING_LABEL_NOPREFIX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ID_NET_LABEL_ONBOARD\00", align 1
@NET_USB = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@NET_BCMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @builtin_net_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_net_id(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.netnames, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %33 = bitcast %struct.netnames* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 80, i1 false)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @sd_device_get_sysattr_value(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %5, align 4
  br label %460

40:                                               ; preds = %4
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strtoul(i8* %41, i32* null, i32 0)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  switch i64 %43, label %53 [
    i64 130, label %44
    i64 129, label %45
    i64 128, label %52
  ]

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @NAMING_INFINIBAND, align 4
  %47 = call i64 @naming_scheme_has(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %460

51:                                               ; preds = %49
  br label %54

52:                                               ; preds = %40
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %460

54:                                               ; preds = %52, %51, %44
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @sd_device_get_sysattr_value(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %10)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %5, align 4
  br label %460

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @sd_device_get_sysattr_value(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %11)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %5, align 4
  br label %460

68:                                               ; preds = %61
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @streq(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %460

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @sd_device_get_devtype(i32* %75, i8** %12)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %89

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = call i64 @streq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %88

88:                                               ; preds = %87, %83
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.TYPE_2__* (...) @naming_scheme()
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @udev_builtin_add_property(i32* %91, i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @names_mac(i32* %97, %struct.netnames* %14)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 12
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %101
  %106 = load i32, i32* @IFNAMSIZ, align 4
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %17, align 8
  %109 = alloca i8, i64 %107, align 16
  store i64 %107, i64* %18, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 11
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @xsprintf(i8* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %110, i32 %114, i32 %118, i32 %122, i32 %126, i32 %130, i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @udev_builtin_add_property(i32* %136, i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %109)
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @ieee_oui(i32* %139, %struct.netnames* %14, i32 %140)
  %142 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %142)
  br label %143

143:                                              ; preds = %105, %101, %90
  %144 = load i32*, i32** %6, align 8
  %145 = call i64 @names_ccw(i32* %144, %struct.netnames* %14)
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @NET_CCW, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load i32, i32* @IFNAMSIZ, align 4
  %154 = zext i32 %153 to i64
  %155 = call i8* @llvm.stacksave()
  store i8* %155, i8** %19, align 8
  %156 = alloca i8, i64 %154, align 16
  store i64 %154, i64* %20, align 8
  %157 = trunc i64 %154 to i32
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %156, i32 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %158, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %152
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @udev_builtin_add_property(i32* %166, i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  br label %169

169:                                              ; preds = %165, %152
  store i32 0, i32* %5, align 4
  %170 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %460

171:                                              ; preds = %147, %143
  %172 = load i32*, i32** %6, align 8
  %173 = call i64 @names_vio(i32* %172, %struct.netnames* %14)
  %174 = icmp sge i64 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NET_VIO, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %175
  %181 = load i32, i32* @IFNAMSIZ, align 4
  %182 = zext i32 %181 to i64
  %183 = call i8* @llvm.stacksave()
  store i8* %183, i8** %21, align 8
  %184 = alloca i8, i64 %182, align 16
  store i64 %182, i64* %22, align 8
  %185 = trunc i64 %182 to i32
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 9
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %184, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %186, i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %180
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @udev_builtin_add_property(i32* %194, i32 %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %184)
  br label %197

197:                                              ; preds = %193, %180
  store i32 0, i32* %5, align 4
  %198 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %198)
  br label %460

199:                                              ; preds = %175, %171
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i64 @names_platform(i32* %200, %struct.netnames* %14, i32 %201)
  %203 = icmp sge i64 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @NET_PLATFORM, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %204
  %210 = load i32, i32* @IFNAMSIZ, align 4
  %211 = zext i32 %210 to i64
  %212 = call i8* @llvm.stacksave()
  store i8* %212, i8** %23, align 8
  %213 = alloca i8, i64 %211, align 16
  store i64 %211, i64* %24, align 8
  %214 = trunc i64 %211 to i32
  %215 = load i8*, i8** %13, align 8
  %216 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %213, i32 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %215, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %209
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @udev_builtin_add_property(i32* %223, i32 %224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %213)
  br label %226

226:                                              ; preds = %222, %209
  store i32 0, i32* %5, align 4
  %227 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %227)
  br label %460

228:                                              ; preds = %204, %199
  %229 = load i32*, i32** %6, align 8
  %230 = call i64 @names_netdevsim(i32* %229, %struct.netnames* %14)
  %231 = icmp sge i64 %230, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @NET_NETDEVSIM, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %232
  %238 = load i32, i32* @IFNAMSIZ, align 4
  %239 = zext i32 %238 to i64
  %240 = call i8* @llvm.stacksave()
  store i8* %240, i8** %25, align 8
  %241 = alloca i8, i64 %239, align 16
  store i64 %239, i64* %26, align 8
  %242 = trunc i64 %239 to i32
  %243 = load i8*, i8** %13, align 8
  %244 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %241, i32 %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %243, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %237
  %251 = load i32*, i32** %6, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @udev_builtin_add_property(i32* %251, i32 %252, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %241)
  br label %254

254:                                              ; preds = %250, %237
  store i32 0, i32* %5, align 4
  %255 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %255)
  br label %460

256:                                              ; preds = %232, %228
  %257 = load i32*, i32** %6, align 8
  %258 = call i64 @names_pci(i32* %257, %struct.netnames* %14)
  %259 = icmp slt i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 0, i32* %5, align 4
  br label %460

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @NET_PCI, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %349

266:                                              ; preds = %261
  %267 = load i32, i32* @IFNAMSIZ, align 4
  %268 = zext i32 %267 to i64
  %269 = call i8* @llvm.stacksave()
  store i8* %269, i8** %27, align 8
  %270 = alloca i8, i64 %268, align 16
  store i64 %268, i64* %28, align 8
  %271 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 6
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %266
  %277 = trunc i64 %268 to i32
  %278 = load i8*, i8** %13, align 8
  %279 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 6
  %280 = load i64*, i64** %279, align 8
  %281 = bitcast i64* %280 to i8*
  %282 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %270, i32 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %278, i8* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %276
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @udev_builtin_add_property(i32* %285, i32 %286, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %270)
  br label %288

288:                                              ; preds = %284, %276, %266
  %289 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %311

292:                                              ; preds = %288
  %293 = trunc i64 %268 to i32
  %294 = load i32, i32* @NAMING_LABEL_NOPREFIX, align 4
  %295 = call i64 @naming_scheme_has(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %300

298:                                              ; preds = %292
  %299 = load i8*, i8** %13, align 8
  br label %300

300:                                              ; preds = %298, %297
  %301 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), %297 ], [ %299, %298 ]
  %302 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = inttoptr i64 %303 to i8*
  %305 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %270, i32 %293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %301, i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @udev_builtin_add_property(i32* %308, i32 %309, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %270)
  br label %311

311:                                              ; preds = %307, %300, %288
  %312 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %311
  %319 = trunc i64 %268 to i32
  %320 = load i8*, i8** %13, align 8
  %321 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %270, i32 %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %320, i8* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = load i32*, i32** %6, align 8
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @udev_builtin_add_property(i32* %326, i32 %327, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %270)
  br label %329

329:                                              ; preds = %325, %318, %311
  %330 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %329
  %337 = trunc i64 %268 to i32
  %338 = load i8*, i8** %13, align 8
  %339 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %270, i32 %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %338, i8* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %336
  %344 = load i32*, i32** %6, align 8
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @udev_builtin_add_property(i32* %344, i32 %345, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %270)
  br label %347

347:                                              ; preds = %343, %336, %329
  store i32 0, i32* %5, align 4
  %348 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %348)
  br label %460

349:                                              ; preds = %261
  %350 = load i32*, i32** %6, align 8
  %351 = call i64 @names_usb(i32* %350, %struct.netnames* %14)
  %352 = icmp sge i64 %351, 0
  br i1 %352, label %353, label %404

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @NET_USB, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %404

358:                                              ; preds = %353
  %359 = load i32, i32* @IFNAMSIZ, align 4
  %360 = zext i32 %359 to i64
  %361 = call i8* @llvm.stacksave()
  store i8* %361, i8** %29, align 8
  %362 = alloca i8, i64 %360, align 16
  store i64 %360, i64* %30, align 8
  %363 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %358
  %370 = trunc i64 %360 to i32
  %371 = load i8*, i8** %13, align 8
  %372 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %362, i32 %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %371, i8* %373, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %369
  %379 = load i32*, i32** %6, align 8
  %380 = load i32, i32* %9, align 4
  %381 = call i32 @udev_builtin_add_property(i32* %379, i32 %380, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %362)
  br label %382

382:                                              ; preds = %378, %369, %358
  %383 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %384 = load i8*, i8** %383, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 0
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %382
  %390 = trunc i64 %360 to i32
  %391 = load i8*, i8** %13, align 8
  %392 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  %394 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %362, i32 %390, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %391, i8* %393, i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %389
  %399 = load i32*, i32** %6, align 8
  %400 = load i32, i32* %9, align 4
  %401 = call i32 @udev_builtin_add_property(i32* %399, i32 %400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %362)
  br label %402

402:                                              ; preds = %398, %389, %382
  store i32 0, i32* %5, align 4
  %403 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %403)
  br label %460

404:                                              ; preds = %353, %349
  %405 = load i32*, i32** %6, align 8
  %406 = call i64 @names_bcma(i32* %405, %struct.netnames* %14)
  %407 = icmp sge i64 %406, 0
  br i1 %407, label %408, label %459

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @NET_BCMA, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %459

413:                                              ; preds = %408
  %414 = load i32, i32* @IFNAMSIZ, align 4
  %415 = zext i32 %414 to i64
  %416 = call i8* @llvm.stacksave()
  store i8* %416, i8** %31, align 8
  %417 = alloca i8, i64 %415, align 16
  store i64 %415, i64* %32, align 8
  %418 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %437

424:                                              ; preds = %413
  %425 = trunc i64 %415 to i32
  %426 = load i8*, i8** %13, align 8
  %427 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 1
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf_ok(i8* %417, i32 %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %426, i8* %428, i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %424
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* %9, align 4
  %436 = call i32 @udev_builtin_add_property(i32* %434, i32 %435, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %417)
  br label %437

437:                                              ; preds = %433, %424, %413
  %438 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %439 = load i8*, i8** %438, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 0
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %457

444:                                              ; preds = %437
  %445 = trunc i64 %415 to i32
  %446 = load i8*, i8** %13, align 8
  %447 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 2
  %448 = load i8*, i8** %447, align 8
  %449 = getelementptr inbounds %struct.netnames, %struct.netnames* %14, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = call i64 @snprintf(i8* %417, i32 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %446, i8* %448, i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %457

453:                                              ; preds = %444
  %454 = load i32*, i32** %6, align 8
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @udev_builtin_add_property(i32* %454, i32 %455, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %417)
  br label %457

457:                                              ; preds = %453, %444, %437
  store i32 0, i32* %5, align 4
  %458 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %458)
  br label %460

459:                                              ; preds = %408, %404
  store i32 0, i32* %5, align 4
  br label %460

460:                                              ; preds = %459, %457, %402, %347, %260, %254, %226, %197, %169, %73, %66, %59, %53, %50, %38
  %461 = load i32, i32* %5, align 4
  ret i32 %461
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sd_device_get_sysattr_value(i32*, i8*, i8**) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i64 @naming_scheme_has(i32) #2

declare dso_local i64 @streq(i8*, i8*) #2

declare dso_local i64 @sd_device_get_devtype(i32*, i8**) #2

declare dso_local i32 @udev_builtin_add_property(i32*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_2__* @naming_scheme(...) #2

declare dso_local i32 @names_mac(i32*, %struct.netnames*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @xsprintf(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ieee_oui(i32*, %struct.netnames*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @names_ccw(i32*, %struct.netnames*) #2

declare dso_local i64 @snprintf_ok(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i64 @names_vio(i32*, %struct.netnames*) #2

declare dso_local i64 @names_platform(i32*, %struct.netnames*, i32) #2

declare dso_local i64 @names_netdevsim(i32*, %struct.netnames*) #2

declare dso_local i64 @names_pci(i32*, %struct.netnames*) #2

declare dso_local i64 @names_usb(i32*, %struct.netnames*) #2

declare dso_local i64 @names_bcma(i32*, %struct.netnames*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
