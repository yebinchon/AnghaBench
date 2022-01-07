; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_mrl_helpers.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_mrl_helpers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8**, i64 }

@testcase = common dso_local global %struct.TYPE_3__* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@MAX_RESULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %141, %0
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %144

15:                                               ; preds = %10
  store i8* null, i8** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @mrl_FragmentSplit(i32* %3, i8** %4, i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %134

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VLC_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %37, i8* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %56

47:                                               ; preds = %28
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %47, %36
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %58 = load i64, i64* %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8* %62, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %129, %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %65 = load i64, i64* %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %132

73:                                               ; preds = %63
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @vlc_array_count(i32* %3)
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @MAX_RESULT, align 8
  %80 = icmp ult i64 %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = call i8* @vlc_array_item_at_index(i32* %3, i64 %85)
  store i8* %86, i8** %8, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @testcase, align 8
  %88 = load i64, i64* %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @strcmp(i8* %94, i8* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  store i8* null, i8** %9, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @mrl_EscapeFragmentIdentifier(i8** %9, i8* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @VLC_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br label %108

108:                                              ; preds = %105, %81
  %109 = phi i1 [ false, %81 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i64 @strlen(i8* %114)
  %116 = call i64 @strncmp(i8* %112, i8* %113, i64 %115)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 2
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %6, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @free(i8* %127)
  br label %129

129:                                              ; preds = %108
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  br label %63

132:                                              ; preds = %63
  %133 = call i32 @vlc_array_clear(i32* %3)
  br label %140

134:                                              ; preds = %15
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @VLC_SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %134, %132
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %2, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %2, align 8
  br label %10

144:                                              ; preds = %10
  ret i32 0
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mrl_FragmentSplit(i32*, i8**, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local i8* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @mrl_EscapeFragmentIdentifier(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
