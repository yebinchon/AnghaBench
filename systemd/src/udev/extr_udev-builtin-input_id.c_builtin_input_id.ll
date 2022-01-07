; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_builtin_input_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_builtin_input_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_MAX = common dso_local global i32 0, align 4
@ABS_MAX = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@REL_MAX = common dso_local global i32 0, align 4
@INPUT_PROP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"capabilities/ev\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ID_INPUT\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"capabilities/abs\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"capabilities/rel\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"capabilities/key\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"ID_INPUT_KEY\00", align 1
@EV_SW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"ID_INPUT_SWITCH\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @builtin_input_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_input_id(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* @EV_MAX, align 4
  %22 = call i32 @NBITS(i32 %21)
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* @ABS_MAX, align 4
  %27 = call i32 @NBITS(i32 %26)
  %28 = zext i32 %27 to i64
  %29 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32, i32* @KEY_MAX, align 4
  %31 = call i32 @NBITS(i32 %30)
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32, i32* @REL_MAX, align 4
  %35 = call i32 @NBITS(i32 %34)
  %36 = zext i32 %35 to i64
  %37 = alloca i64, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %38 = load i32, i32* @INPUT_PROP_MAX, align 4
  %39 = call i32 @NBITS(i32 %38)
  %40 = zext i32 %39 to i64
  %41 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %15, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @assert(i32* %42)
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %57, %4
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @sd_device_get_sysattr_value(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %20)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @sd_device_get_parent_with_subsystem_devtype(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32** %9)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %45

58:                                               ; preds = %53
  store i32* null, i32** %9, align 8
  br label %59

59:                                               ; preds = %58, %52, %45
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @udev_builtin_add_property(i32* %63, i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32*, i32** %9, align 8
  %67 = mul nuw i64 8, %23
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @get_cap_mask(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %25, i32 %68, i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = mul nuw i64 8, %28
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @get_cap_mask(i32* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64* %29, i32 %73, i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = mul nuw i64 8, %36
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @get_cap_mask(i32* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64* %37, i32 %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = mul nuw i64 8, %32
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @get_cap_mask(i32* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64* %33, i32 %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = mul nuw i64 8, %40
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @get_cap_mask(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64* %41, i32 %88, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @test_pointers(i32* %91, i64* %25, i64* %29, i64* %33, i64* %37, i64* %41, i32 %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @test_key(i32* %94, i64* %25, i64* %33, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %62
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @EV_REL, align 4
  %104 = call i64 @test_bit(i32 %103, i64* %25)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* @REL_WHEEL, align 4
  %108 = call i64 @test_bit(i32 %107, i64* %37)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @REL_HWHEEL, align 4
  %112 = call i64 @test_bit(i32 %111, i64* %37)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @udev_builtin_add_property(i32* %115, i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %110, %102, %99, %62
  %119 = load i32, i32* @EV_SW, align 4
  %120 = call i64 @test_bit(i32 %119, i64* %25)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @udev_builtin_add_property(i32* %123, i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %59
  %128 = load i32*, i32** %5, align 8
  %129 = call i64 @sd_device_get_devname(i32* %128, i8** %17)
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i32*, i32** %5, align 8
  %133 = call i64 @sd_device_get_sysname(i32* %132, i8** %16)
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i8*, i8** %16, align 8
  %137 = call i64 @startswith(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32*, i32** %5, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @extract_info(i32* %140, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %135, %131, %127
  %145 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %145)
  ret i32 0
}

declare dso_local i32 @NBITS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i64 @sd_device_get_parent_with_subsystem_devtype(i32*, i8*, i32*, i32**) #1

declare dso_local i32 @udev_builtin_add_property(i32*, i32, i8*, i8*) #1

declare dso_local i32 @get_cap_mask(i32*, i8*, i64*, i32, i32) #1

declare dso_local i32 @test_pointers(i32*, i64*, i64*, i64*, i64*, i64*, i32) #1

declare dso_local i32 @test_key(i32*, i64*, i64*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @sd_device_get_devname(i32*, i8**) #1

declare dso_local i64 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @extract_info(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
