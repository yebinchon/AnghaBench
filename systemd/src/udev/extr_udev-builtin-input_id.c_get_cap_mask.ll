; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_get_cap_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-input_id.c_get_cap_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s raw kernel attribute: %s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Ignoring %s block %lX which is larger than maximum size\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  bit %%4u: %%0%zulX\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s decoded bit map:\00", align 1
@DISABLE_WARNING_FORMAT_NONLITERAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@REENABLE_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64*, i64, i32)* @get_cap_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cap_mask(i32* %0, i8* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @sd_device_get_sysattr_value(i32* %16, i8* %17, i8** %11)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 (i8*, i8*, ...) @xsprintf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %28 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @memzero(i64* %29, i64 %30)
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %56, %21
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %34 = call i8* @strrchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i64 @strtoul(i8* %38, i32* null, i32 16)
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = udiv i64 %42, 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i64, i64* %15, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  br label %56

51:                                               ; preds = %36
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i8*, i8** %14, align 8
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %32

60:                                               ; preds = %32
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %62 = call i64 @strtoul(i8* %61, i32* null, i32 16)
  store i64 %62, i64* %15, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = udiv i64 %65, 8
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i64, i64* %15, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  br label %79

74:                                               ; preds = %60
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %79
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %84 = call i32 (i8*, i8*, ...) @xsprintf(i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 16)
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  %88 = load i64, i64* %9, align 8
  %89 = udiv i64 %88, 8
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %102, %82
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %15, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i64, i64* %15, align 8
  %99 = icmp ugt i64 %98, 0
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi i1 [ false, %90 ], [ %99, %97 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i64, i64* %15, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %15, align 8
  br label %90

105:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %125, %105
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %15, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* @DISABLE_WARNING_FORMAT_NONLITERAL, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @BITS_PER_LONG, align 4
  %117 = mul i32 %115, %116
  %118 = load i64*, i64** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %113, i8* %114, i32 %117, i64 %122)
  %124 = load i32, i32* @REENABLE_WARNING, align 4
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %106

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %79
  ret void
}

declare dso_local i64 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i32 @xsprintf(i8*, i8*, ...) #1

declare dso_local i32 @log_device_debug(i32*, i8*, ...) #1

declare dso_local i32 @memzero(i64*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
