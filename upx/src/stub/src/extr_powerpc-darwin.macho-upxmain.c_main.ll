; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_powerpc-darwin.macho-upxmain.c_main.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_powerpc-darwin.macho-upxmain.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.l_info = type { i32 }

@LC_SEGMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"__LINKEDIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [16384 x i8], align 16
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_7__* inttoptr (i64 and (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 -4096) to %struct.TYPE_7__*), %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 1
  %19 = bitcast %struct.TYPE_7__* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %83, %2
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %20
  %27 = load i64, i64* @LC_SEGMENT, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = bitcast %struct.TYPE_8__* %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %13, align 8
  %35 = load i64, i64* bitcast (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 2) to i64*), align 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = bitcast i32* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %35, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = add i64 4, %47
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %55, %58
  %60 = zext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %14, align 8
  br label %67

67:                                               ; preds = %74, %43
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %14, align 8
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %11, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %67

75:                                               ; preds = %67
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 0, %76
  %78 = load i32*, i32** %14, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = getelementptr inbounds i8, i8* %79, i64 %77
  store i8* %80, i8** %10, align 8
  br label %94

81:                                               ; preds = %32
  br label %82

82:                                               ; preds = %81, %26
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = bitcast %struct.TYPE_8__* %89 to i8*
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = bitcast i8* %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %7, align 8
  br label %20

94:                                               ; preds = %75, %20
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.l_info*
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds [16384 x i8], [16384 x i8]* %15, i64 0, i64 0
  %99 = bitcast i8* %98 to %struct.TYPE_7__*
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 -2
  %104 = bitcast i8** %103 to %struct.TYPE_7__**
  %105 = call i32 @upx_main(%struct.l_info* %96, i64 %97, %struct.TYPE_7__* %99, i32 16384, i32* %100, i32* %101, %struct.TYPE_7__** %104)
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @munmap(i8* %106, i64 %107)
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local i32 @upx_main(%struct.l_info*, i64, %struct.TYPE_7__*, i32, i32*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
