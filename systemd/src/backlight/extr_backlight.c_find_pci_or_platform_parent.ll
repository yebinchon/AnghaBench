; ModuleID = '/home/carl/AnghaBench/systemd/src/backlight/extr_backlight.c_find_pci_or_platform_parent.c'
source_filename = "/home/carl/AnghaBench/systemd/src/backlight/extr_backlight.c_find_pci_or_platform_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@DIGITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-LVDS-\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"-Embedded DisplayPort-\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Cannot parse PCI class '%s' of device %s:%s: %m\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*****, i32******)* @find_pci_or_platform_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pci_or_platform_parent(i32***** %0, i32****** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*****, align 8
  %5 = alloca i32******, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*****, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32***** %0, i32****** %4, align 8
  store i32****** %1, i32******* %5, align 8
  %13 = load i32*****, i32****** %4, align 8
  %14 = bitcast i32***** %13 to i32******
  %15 = call i32 @assert(i32****** %14)
  %16 = load i32******, i32******* %5, align 8
  %17 = call i32 @assert(i32****** %16)
  %18 = load i32*****, i32****** %4, align 8
  %19 = call i32 @sd_device_get_parent(i32***** %18, i32****** %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load i32*****, i32****** %9, align 8
  %26 = call i32 @sd_device_get_subsystem(i32***** %25, i8** %6)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %109

31:                                               ; preds = %24
  %32 = load i32*****, i32****** %9, align 8
  %33 = call i32 @sd_device_get_sysname(i32***** %32, i8** %7)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %109

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @streq(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @startswith(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %109

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @DIGITS, align 4
  %53 = call i32 @strspn(i8* %51, i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @STARTSWITH_SET(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %109

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %50
  br label %105

70:                                               ; preds = %38
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @streq(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32*****, i32****** %9, align 8
  %76 = call i64 @sd_device_get_sysattr_value(i32***** %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  store i64 0, i64* %12, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @safe_atolu(i8* %79, i64* %12)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @log_warning_errno(i32 %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %86, i8* %87)
  store i32 %88, i32* %3, align 4
  br label %109

89:                                               ; preds = %78
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, 196608
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*****, i32****** %9, align 8
  %94 = load i32******, i32******* %5, align 8
  store i32***** %93, i32****** %94, align 8
  store i32 0, i32* %3, align 4
  br label %109

95:                                               ; preds = %89
  br label %104

96:                                               ; preds = %74, %70
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @streq(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32*****, i32****** %9, align 8
  %102 = load i32******, i32******* %5, align 8
  store i32***** %101, i32****** %102, align 8
  store i32 0, i32* %3, align 4
  br label %109

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %95
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i32*****, i32****** %9, align 8
  %107 = load i32******, i32******* %5, align 8
  %108 = call i32 @find_pci_or_platform_parent(i32***** %106, i32****** %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %100, %92, %83, %65, %47, %36, %29, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32******) #1

declare dso_local i32 @sd_device_get_parent(i32*****, i32******) #1

declare dso_local i32 @sd_device_get_subsystem(i32*****, i8**) #1

declare dso_local i32 @sd_device_get_sysname(i32*****, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @STARTSWITH_SET(i8*, i8*, i8*) #1

declare dso_local i64 @sd_device_get_sysattr_value(i32*****, i8*, i8**) #1

declare dso_local i32 @safe_atolu(i8*, i64*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
