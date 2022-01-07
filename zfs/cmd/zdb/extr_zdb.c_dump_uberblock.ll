; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_uberblock.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_uberblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09magic = %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09version = %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09txg = %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09guid_sum = %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\09timestamp = %llu UTC = %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09mmp_magic = %016llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09mmp_delay = %0llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09mmp_seq = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09mmp_fail = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\09mmp_write = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\09mmp_valid = %x\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"\09rootbp = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"\09checkpoint_txg = %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i8*)* @dump_uberblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_uberblock(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i8* [ %16, %15 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %17 ]
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @localtime(i64* %7)
  %46 = call i32 @asctime(i32 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %44, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = call i64 @MMP_VALID(%struct.TYPE_10__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %95

56:                                               ; preds = %18
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = call i64 @MMP_SEQ_VALID(%struct.TYPE_10__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = call i64 @MMP_SEQ(%struct.TYPE_10__* %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = call i64 @MMP_FAIL_INT_VALID(%struct.TYPE_10__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i64 @MMP_FAIL_INT(%struct.TYPE_10__* %75)
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = call i64 @MMP_INTERVAL_VALID(%struct.TYPE_10__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i64 @MMP_INTERVAL(%struct.TYPE_10__* %84)
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 255
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %18
  %96 = load i32*, i32** @dump_opt, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 117
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 4
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %8, align 8
  %104 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %9, align 8
  %105 = trunc i64 %102 to i32
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = call i32 @snprintf_blkptr(i8* %104, i32 %105, i32* %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %104)
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %100, %95
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i8*, i8** %6, align 8
  br label %122

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %121 ]
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %123)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @asctime(i32) #1

declare dso_local i32 @localtime(i64*) #1

declare dso_local i64 @MMP_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_SEQ_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_SEQ(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_FAIL_INT_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_FAIL_INT(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_INTERVAL_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @MMP_INTERVAL(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf_blkptr(i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
