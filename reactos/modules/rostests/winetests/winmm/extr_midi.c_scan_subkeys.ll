; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_midi.c_scan_subkeys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_midi.c_scan_subkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Identifier\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"VMware\00", align 1
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @scan_subkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_subkeys(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 64, i32* %8, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = ptrtoint i8* %21 to i32
  %23 = call i64 @RegQueryValueExA(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32 %22, i32* %8)
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %122

28:                                               ; preds = %19
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %57, %28
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call i64 @lstrlenA(i8* %33)
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -6
  %37 = icmp ult i8* %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ false, %30 ], [ %41, %38 ]
  br i1 %43, label %44, label %60

44:                                               ; preds = %42
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %11, align 1
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @lstrcmpiA(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i8, i8* %11, align 1
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  store i8 %54, i8* %56, align 1
  br label %57

57:                                               ; preds = %44
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  br label %30

60:                                               ; preds = %42
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %122

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %117, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %67 = call i64 @RegEnumKeyExA(i32 %64, i32 %65, i8* %66, i32* %8, i32* null, i32* null, i32* null, i32* null)
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  br i1 %75, label %76, label %120

76:                                               ; preds = %74
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @lstrlenA(i8* %79)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %12, align 1
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @lstrlenA(i8* %85)
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %86
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @lstrcmpiA(i8* %88, i8* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %76
  %95 = load i8, i8* %12, align 1
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @lstrlenA(i8* %98)
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %99
  store i8 %95, i8* %100, align 1
  %101 = load i32, i32* %4, align 4
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %103 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %104 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @RegOpenKeyExA(i32 %101, i8* %102, i32 0, i32 %105, i32* %13)
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = load i32, i32* %13, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = call i32 @scan_subkeys(i32 %110, i8** %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @RegCloseKey(i32 %114)
  br label %116

116:                                              ; preds = %109, %94
  br label %117

117:                                              ; preds = %116, %76
  store i32 64, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %63

120:                                              ; preds = %74
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %60, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @lstrlenA(i8*) #1

declare dso_local i64 @lstrcmpiA(i8*, i8*) #1

declare dso_local i64 @RegEnumKeyExA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
