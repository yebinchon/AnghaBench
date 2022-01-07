; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_dump_read_stream.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_dump_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i8*, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Failed reading stream: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MMBAK_FLAG_NO_CIPHER = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Inflate error: %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@MMBAK_RET_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @dump_read_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_read_stream(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %156

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i32* %14, i32** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %144, %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %106

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i64 [ 4, %39 ], [ %44, %40 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fread(i32 %50, i32 1, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ferror(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @errno, align 4
  %66 = call i8* @strerror(i32 %65)
  %67 = call i32 @LOG_AND_FAIL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %58, %45
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %68
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MMBAK_FLAG_NO_CIPHER, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @RC4(i32* %80, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %78, %71
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %89, %68
  br label %106

106:                                              ; preds = %105, %28, %22
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* @Z_NO_FLUSH, align 4
  %110 = call i32 @inflate(%struct.TYPE_5__* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @Z_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %106
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @Z_STREAM_END, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  br label %130

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %124
  %131 = phi i8* [ %128, %124 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %129 ]
  %132 = call i32 @LOG_AND_FAIL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %114, %106
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @Z_STREAM_END, align 4
  %143 = icmp ne i32 %141, %142
  br label %144

144:                                              ; preds = %140, %134
  %145 = phi i1 [ false, %134 ], [ %143, %140 ]
  br i1 %145, label %22, label %146

146:                                              ; preds = %144
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %147, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %4, align 4
  br label %156

154:                                              ; No predecessors!
  %155 = load i32, i32* @MMBAK_RET_FAILED, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %146, %11
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @fread(i32, i32, i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @LOG_AND_FAIL(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @RC4(i32*, i32, i32, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
