; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_PICE_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_PICE_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"PICE_open: %S\0A\00", align 1
@OF_READWRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OF_READ = common dso_local global i32 0, align 4
@OF_WRITE = common dso_local global i32 0, align 4
@OF_SHARE_COMPAT = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OF_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@OF_SHARE_DENY_READ = common dso_local global i32 0, align 4
@OF_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@OF_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@FILE_NO_INTERMEDIATE_BUFFERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PICE_open: NtOpenFile error: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PICE_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DPRINT(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @OF_READWRITE, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @OF_READWRITE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @GENERIC_READ, align 4
  %22 = load i32, i32* @GENERIC_WRITE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OF_READ, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @OF_READ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @GENERIC_READ, align 4
  store i32 %31, i32* %6, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @OF_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @OF_WRITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @GENERIC_WRITE, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %32
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @OF_SHARE_COMPAT, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @OF_SHARE_COMPAT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %50 = load i32, i32* @FILE_SHARE_READ, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %7, align 4
  br label %97

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @OF_SHARE_DENY_NONE, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @OF_SHARE_DENY_NONE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %62 = load i32, i32* @FILE_SHARE_READ, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %96

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @OF_SHARE_DENY_READ, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @OF_SHARE_DENY_READ, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %74 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %7, align 4
  br label %95

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @OF_SHARE_DENY_WRITE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @OF_SHARE_DENY_WRITE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @FILE_SHARE_READ, align 4
  %84 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %7, align 4
  br label %94

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @OF_SHARE_EXCLUSIVE, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @OF_SHARE_EXCLUSIVE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95, %60
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @RtlInitUnicodeString(i32* %8, i32 %98)
  %100 = call i32 @InitializeObjectAttributes(i32* %9, i32* %8, i32 0, i32* null, i32* null)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @FILE_NO_INTERMEDIATE_BUFFERING, align 4
  %104 = call i32 @NtOpenFile(i32* %11, i32 %101, i32* %9, i32* %10, i32 %102, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @NT_SUCCESS(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @DPRINT(i32 %109)
  store i32 0, i32* %3, align 4
  br label %113

111:                                              ; preds = %97
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
