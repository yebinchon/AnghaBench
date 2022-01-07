; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlURIEscapeStr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlURIEscapeStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"escaping URI value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xmlURIEscapeStr(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %156

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64*, i64** %4, align 8
  %23 = call i64* @xmlStrdup(i64* %22)
  store i64* %23, i64** %3, align 8
  br label %156

24:                                               ; preds = %16
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @xmlStrlen(i64* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i64* null, i64** %3, align 8
  br label %156

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 20
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @xmlMallocAtomic(i32 %33)
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %6, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @xmlURIErrMemory(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %3, align 8
  br label %156

40:                                               ; preds = %30
  %41 = load i64*, i64** %4, align 8
  store i64* %41, i64** %9, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %149, %40
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %150

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp sle i32 %49, 3
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i64*, i64** %6, align 8
  %53 = call i64* @xmlSaveUriRealloc(i64* %52, i32* %10)
  store i64* %53, i64** %8, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = icmp eq i64* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 @xmlURIErrMemory(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i64*, i64** %6, align 8
  %59 = call i32 @xmlFree(i64* %58)
  store i64* null, i64** %3, align 8
  br label %156

60:                                               ; preds = %51
  %61 = load i64*, i64** %8, align 8
  store i64* %61, i64** %6, align 8
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 64
  br i1 %66, label %67, label %140

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @IS_UNRESERVED(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %140, label %71

71:                                               ; preds = %67
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @xmlStrchr(i64* %72, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %140, label %76

76:                                               ; preds = %71
  %77 = load i64*, i64** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64 37, i64* %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = ashr i64 %82, 4
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %12, align 1
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sle i32 %86, 9
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 48, %90
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  br label %109

98:                                               ; preds = %76
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 65, %100
  %102 = sub nsw i32 %101, 10
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 %103, i64* %108, align 8
  br label %109

109:                                              ; preds = %98, %88
  %110 = load i64, i64* %7, align 8
  %111 = and i64 %110, 15
  %112 = trunc i64 %111 to i8
  store i8 %112, i8* %12, align 1
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 %114, 9
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load i8, i8* %12, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 48, %118
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  store i64 %120, i64* %125, align 8
  br label %137

126:                                              ; preds = %109
  %127 = load i8, i8* %12, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 65, %128
  %130 = sub nsw i32 %129, 10
  %131 = sext i32 %130 to i64
  %132 = load i64*, i64** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  store i64 %131, i64* %136, align 8
  br label %137

137:                                              ; preds = %126, %116
  %138 = load i64*, i64** %9, align 8
  %139 = getelementptr inbounds i64, i64* %138, i32 1
  store i64* %139, i64** %9, align 8
  br label %149

140:                                              ; preds = %71, %67, %62
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i32 1
  store i64* %142, i64** %9, align 8
  %143 = load i64, i64* %141, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  store i64 %143, i64* %148, align 8
  br label %149

149:                                              ; preds = %140, %137
  br label %42

150:                                              ; preds = %42
  %151 = load i64*, i64** %6, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 0, i64* %154, align 8
  %155 = load i64*, i64** %6, align 8
  store i64* %155, i64** %3, align 8
  br label %156

156:                                              ; preds = %150, %56, %38, %29, %21, %15
  %157 = load i64*, i64** %3, align 8
  ret i64* %157
}

declare dso_local i64* @xmlStrdup(i64*) #1

declare dso_local i32 @xmlStrlen(i64*) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlURIErrMemory(i8*) #1

declare dso_local i64* @xmlSaveUriRealloc(i64*, i32*) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @IS_UNRESERVED(i64) #1

declare dso_local i32 @xmlStrchr(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
