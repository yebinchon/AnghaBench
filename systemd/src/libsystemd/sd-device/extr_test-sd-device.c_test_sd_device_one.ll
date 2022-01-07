; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_test-sd-device.c_test_sd_device_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_test-sd-device.c_test_sd_device_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"name_assign_type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ID_NET_DRIVER\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"syspath:%s subsystem:%s initialized:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_sd_device_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sd_device_one(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @sd_device_get_syspath(i32* %10, i8** %3)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @sd_device_get_subsystem(i32* %15, i8** %4)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi i1 [ true, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @sd_device_get_devtype(i32* %28, i8** %5)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ true, %24 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @sd_device_get_devnum(i32* %41, i32* %6)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @major(i32 %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ true, %45 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @sd_device_get_ifindex(i32* %58, i32* %8)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ true, %62 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert_se(i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @sd_device_get_driver(i32* %74, i8** %5)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi i1 [ true, %70 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert_se(i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i64 @sd_device_get_devpath(i32* %87, i8** %5)
  %89 = icmp sge i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @sd_device_get_devname(i32* %92, i8** %5)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br label %101

101:                                              ; preds = %96, %83
  %102 = phi i1 [ true, %83 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert_se(i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i64 @sd_device_get_sysname(i32* %105, i8** %5)
  %107 = icmp sge i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert_se(i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @sd_device_get_sysnum(i32* %110, i8** %5)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br label %119

119:                                              ; preds = %114, %101
  %120 = phi i1 [ true, %101 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert_se(i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @sd_device_get_is_initialized(i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert_se(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %119
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @sd_device_get_usec_since_initialized(i32* %132, i64* %7)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* %7, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @ENODATA, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i1 [ true, %136 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert_se(i32 %146)
  br label %148

148:                                              ; preds = %144, %119
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @sd_device_get_sysattr_value(i32* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @ENOENT, align 4
  %156 = sub nsw i32 0, %155
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  %159 = call i64 @IN_SET(i32 %154, i32 %156, i32 %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %153, %148
  %162 = phi i1 [ true, %148 ], [ %160, %153 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert_se(i32 %163)
  %165 = load i32*, i32** %2, align 8
  %166 = call i32 @sd_device_get_property_value(i32* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @ENOENT, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br label %174

174:                                              ; preds = %169, %161
  %175 = phi i1 [ true, %161 ], [ %173, %169 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert_se(i32 %176)
  %178 = load i8*, i8** %3, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = call i32 @strna(i8* %179)
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @yes_no(i32 %181)
  %183 = call i32 @log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %178, i32 %180, i32 %182)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_device_get_syspath(i32*, i8**) #1

declare dso_local i32 @sd_device_get_subsystem(i32*, i8**) #1

declare dso_local i32 @sd_device_get_devtype(i32*, i8**) #1

declare dso_local i32 @sd_device_get_devnum(i32*, i32*) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @sd_device_get_ifindex(i32*, i32*) #1

declare dso_local i32 @sd_device_get_driver(i32*, i8**) #1

declare dso_local i64 @sd_device_get_devpath(i32*, i8**) #1

declare dso_local i32 @sd_device_get_devname(i32*, i8**) #1

declare dso_local i64 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i32 @sd_device_get_sysnum(i32*, i8**) #1

declare dso_local i32 @sd_device_get_is_initialized(i32*) #1

declare dso_local i32 @sd_device_get_usec_since_initialized(i32*, i64*) #1

declare dso_local i32 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i32 @log_info(i8*, i8*, i32, i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i32 @yes_no(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
