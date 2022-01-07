; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_local_group.c_BuildAliasInfoBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_local_group.c_BuildAliasInfoBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8** }
%struct.TYPE_9__ = type { i8**, i8** }

@NERR_Success = common dso_local global i64 0, align 8
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@UNICODE_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, i32**)* @BuildAliasInfoBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BuildAliasInfoBuffer(%struct.TYPE_11__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* @NERR_Success, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i32**, i32*** %6, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %41 [
    i32 0, label %16
    i32 1, label %25
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 4, %21
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 4, %30
  %32 = add i64 %31, 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %32, %37
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  store i64 %42, i64* %12, align 8
  br label %163

43:                                               ; preds = %25, %16
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @NetApiBufferAllocate(i32 %44, i32** %7)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @NERR_Success, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %163

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ZeroMemory(i32* %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  switch i32 %54, label %162 [
    i32 0, label %55
    i32 1, label %90
  ]

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = bitcast i32* %56 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %8, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = ptrtoint %struct.TYPE_10__* %58 to i32
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = bitcast i8* %63 to i8**
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i8** %69, i32 %73, i32 %77)
  %79 = load i8*, i8** @UNICODE_NULL, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 4
  %89 = getelementptr inbounds i8*, i8** %82, i64 %88
  store i8* %79, i8** %89, align 8
  br label %162

90:                                               ; preds = %50
  %91 = load i32*, i32** %7, align 8
  %92 = bitcast i32* %91 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %9, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = ptrtoint %struct.TYPE_9__* %93 to i32
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = bitcast i8* %98 to i8**
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i8** %99, i8*** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8** %104, i32 %108, i32 %112)
  %114 = load i8*, i8** @UNICODE_NULL, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = udiv i64 %122, 4
  %124 = getelementptr inbounds i8*, i8** %117, i64 %123
  store i8* %114, i8** %124, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %126, %130
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, 4
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %10, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = bitcast i8* %135 to i8**
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i8** %136, i8*** %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i8** %141, i32 %145, i32 %149)
  %151 = load i8*, i8** @UNICODE_NULL, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = udiv i64 %159, 4
  %161 = getelementptr inbounds i8*, i8** %154, i64 %160
  store i8* %151, i8** %161, align 8
  br label %162

162:                                              ; preds = %50, %90, %55
  br label %163

163:                                              ; preds = %162, %49, %41
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @NERR_Success, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32*, i32** %7, align 8
  %169 = load i32**, i32*** %6, align 8
  store i32* %168, i32** %169, align 8
  br label %177

170:                                              ; preds = %163
  %171 = load i32*, i32** %7, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @NetApiBufferFree(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176, %167
  %178 = load i64, i64* %12, align 8
  ret i64 %178
}

declare dso_local i64 @NetApiBufferAllocate(i32, i32**) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @NetApiBufferFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
