; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_parse_content_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_parse_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@parse_content_type.charsetW = internal constant [8 x i8] c"charset=", align 1
@.str = private unnamed_addr constant [14 x i8] c"Quoted value\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unhandled: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @parse_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_content_type(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchrW(i8* %12, i8 signext 59)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %122

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspaceW(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strlenW(i8* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = icmp ult i8* %39, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @memicmpW(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @parse_content_type.charsetW, i64 0, i64 0), i32 8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %111, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 39
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %122

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %71, %57
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 44
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  br label %59

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @CP_ACP, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @WideCharToMultiByte(i32 %81, i32 0, i8* %82, i64 %83, i8* null, i64 0, i32* null, i32* null)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  %87 = call i8* @heap_alloc(i64 %86)
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %122

91:                                               ; preds = %80
  %92 = load i32, i32* @CP_ACP, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @WideCharToMultiByte(i32 %92, i32 0, i8* %93, i64 %94, i8* %95, i64 %96, i32* null, i32* null)
  %98 = load i8*, i8** %11, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @nsACString_InitDepend(i32* %9, i8* %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @nsIHttpChannel_SetContentCharset(i32* %106, i32* %9)
  %108 = call i32 @nsACString_Finish(i32* %9)
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @heap_free(i8* %109)
  br label %122

111:                                              ; preds = %44, %35
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub i64 %113, %118
  %120 = call i32 @debugstr_wn(i8* %112, i64 %119)
  %121 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %16, %55, %90, %111, %91
  ret void
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @memicmpW(i8*, i8*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i8*, i64, i8*, i64, i32*, i32*) #1

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i32 @nsACString_InitDepend(i32*, i8*) #1

declare dso_local i32 @nsIHttpChannel_SetContentCharset(i32*, i32*) #1

declare dso_local i32 @nsACString_Finish(i32*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @debugstr_wn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
