; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorWriterAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorWriterAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8* }

@VARINT_MAX = common dso_local global i32 0, align 4
@INTERIOR_MAX = common dso_local global i32 0, align 4
@INTERIOR_MIN_TERMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32, i64)* @interiorWriterAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interiorWriterAppend(%struct.TYPE_8__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @VARINT_MAX, align 4
  %14 = load i32, i32* @VARINT_MAX, align 4
  %15 = add nsw i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @putVarint(i8* %18, i32 %29)
  store i32 %30, i32* %11, align 4
  br label %73

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %45, %54
  br label %56

56:                                               ; preds = %39, %32
  %57 = phi i1 [ false, %32 ], [ %55, %39 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %32

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @putVarint(i8* %18, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %18, i64 %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @putVarint(i8* %66, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %61, %28
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* @INTERIOR_MAX, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %73
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load i64, i64* @INTERIOR_MIN_TERMS, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %99
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call %struct.TYPE_9__* @interiorBlockNew(i32 %110, i64 %111, i8* %112, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %125, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = call i32 @dataBufferReset(%struct.TYPE_10__* %130)
  br label %151

132:                                              ; preds = %99, %73
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %11, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @dataBufferAppend2(%struct.TYPE_11__* %136, i8* %18, i32 %137, i8* %141, i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @dataBufferReplace(%struct.TYPE_10__* %147, i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %132, %107
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_9__* %154)
  %156 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %156)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_9__*) #2

declare dso_local i32 @putVarint(i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_9__* @interiorBlockNew(i32, i64, i8*, i32) #2

declare dso_local i32 @dataBufferReset(%struct.TYPE_10__*) #2

declare dso_local i32 @dataBufferAppend2(%struct.TYPE_11__*, i8*, i32, i8*, i32) #2

declare dso_local i32 @dataBufferReplace(%struct.TYPE_10__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
