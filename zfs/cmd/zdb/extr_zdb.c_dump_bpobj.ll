; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bpobj.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bpobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32, i32 }

@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\09\09num_blkptrs = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09\09bytes = %s\0A\00", align 1
@BPOBJ_SIZE_V1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"\09\09comp = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\09\09uncomp = %s\0A\00", align 1
@BPOBJ_SIZE_V2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"\09\09subobjs = %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09\09num_subobjs = %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09\09num_freed = %llu\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"got error %u from dmu_read\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @dump_bpobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bpobj(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 32, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @CTASSERT(i32 %24)
  %26 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 32, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @CTASSERT(i32 %29)
  %31 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 32, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @CTASSERT(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = icmp eq %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %137

39:                                               ; preds = %4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %44 = call i32 @zdb_nicenum(i32 %42, i8* %43, i32 32)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %49 = call i32 @zdb_nicenum(i32 %47, i8* %48, i32 32)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %54 = call i32 @zdb_nicenum(i32 %52, i8* %53, i32 32)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @BPOBJ_SIZE_V1, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %39
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %66, %39
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @BPOBJ_SIZE_V2, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %75, %71
  %87 = load i64, i64* %8, align 8
  %88 = icmp uge i64 %87, 48
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** @dump_opt, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 100
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 5
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %137

101:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %134, %101
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %102
  %109 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %110 = zext i32 %109 to i64
  %111 = call i8* @llvm.stacksave()
  store i8* %111, i8** %14, align 8
  %112 = alloca i8, i64 %110, align 16
  store i64 %110, i64* %15, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @dmu_read(i32* %113, i32 %114, i32 %118, i32 4, i32* %16, i32 0)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load i32, i32* %17, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  store i32 2, i32* %18, align 4
  br label %130

125:                                              ; preds = %108
  %126 = trunc i64 %110 to i32
  %127 = call i32 @BP_GET_FREE(i32* %16)
  %128 = call i32 @snprintf_blkptr_compact(i8* %112, i32 %126, i32* %16, i32 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %112)
  store i32 0, i32* %18, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %18, align 4
  switch i32 %132, label %138 [
    i32 0, label %133
    i32 2, label %137
  ]

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %102

137:                                              ; preds = %38, %100, %130, %102
  ret void

138:                                              ; preds = %130
  unreachable
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @zdb_nicenum(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmu_read(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @snprintf_blkptr_compact(i8*, i32, i32*, i32) #1

declare dso_local i32 @BP_GET_FREE(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
