; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wftree.c_CompactPath.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wftree.c_CompactPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@szEllipses = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CompactPath(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i64*, i64** %6, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @lstrlen(i64* %24)
  %26 = call i32 @GetTextExtentPoint32(i32 %22, i64* %23, i32 %25, %struct.TYPE_3__* %9)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %119

33:                                               ; preds = %3
  %34 = load i64*, i64** %6, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @lstrlen(i64* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = getelementptr inbounds i64, i64* %38, i64 -1
  store i64* %39, i64** %12, align 8
  br label %40

40:                                               ; preds = %45, %33
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHAR_BACKSLASH, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64*, i64** %12, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 -1
  store i64* %47, i64** %12, align 8
  br label %40

48:                                               ; preds = %40
  %49 = load i64*, i64** %12, align 8
  %50 = call i32 @lstrcpy(i64* %21, i64* %49)
  %51 = load i64*, i64** %12, align 8
  store i64* %51, i64** %11, align 8
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %13, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64*, i64** @szEllipses, align 8
  %55 = call i32 @GetTextExtentPoint32(i32 %53, i64* %54, i32 3, %struct.TYPE_3__* %9)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %16, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i64*, i64** %12, align 8
  %60 = load i64*, i64** %12, align 8
  %61 = call i32 @lstrlen(i64* %60)
  %62 = call i32 @GetTextExtentPoint32(i32 %58, i64* %59, i32 %61, %struct.TYPE_3__* %9)
  br label %63

63:                                               ; preds = %105, %48
  %64 = load i64, i64* @TRUE, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = load i64*, i64** %6, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = ptrtoint i64* %69 to i64
  %72 = ptrtoint i64* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @GetTextExtentPoint32(i32 %67, i64* %68, i32 %75, %struct.TYPE_3__* %10)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %66
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %84, %66
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %108

93:                                               ; preds = %88
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = icmp ule i64* %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i64*, i64** %6, align 8
  %100 = load i64*, i64** @szEllipses, align 8
  %101 = call i32 @lstrcpy(i64* %99, i64* %100)
  %102 = load i64*, i64** %6, align 8
  %103 = call i32 @lstrcat(i64* %102, i64* %21)
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %119

105:                                              ; preds = %93
  %106 = load i64*, i64** %11, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 -1
  store i64* %107, i64** %11, align 8
  br label %63

108:                                              ; preds = %92, %63
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i64*, i64** %11, align 8
  %113 = load i64*, i64** @szEllipses, align 8
  %114 = call i32 @lstrcpy(i64* %112, i64* %113)
  %115 = load i64*, i64** %11, align 8
  %116 = call i32 @lstrcat(i64* %115, i64* %21)
  br label %117

117:                                              ; preds = %111, %108
  %118 = load i64, i64* @TRUE, align 8
  store i64 %118, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %117, %98, %31
  %120 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTextExtentPoint32(i32, i64*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @lstrlen(i64*) #2

declare dso_local i32 @lstrcpy(i64*, i64*) #2

declare dso_local i32 @lstrcat(i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
