; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/ext2lib/extr_Super.c_ext2_print_super.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/ext2lib/extr_Super.c_ext2_print_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0AExt2 Super Block Details ...\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"     Inode Count: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"     Block Count: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"     Reserved Block Count: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"     Free Blocks: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"     Free Inodes: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"     First Data Block: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"     Log Block Size: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"     Log Frag Size: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"     Blocks per Group: %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"     Fragments per Group: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"     Inodes per Group: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"     Mount Count: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"     Max Mount Count: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"     Magic Number: %X  (%s)\0A\00", align 1
@EXT2_SUPER_MAGIC = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"     File System State: %X\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"     Error Behaviour: %X\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"     Minor rev: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"     Check Interval: %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"     Creator OS: %lu\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"     Revision Level: %lu\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"     Reserved Block Default UID: %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"     Reserved Block Default GID: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"     uuid = \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"     volume label name: \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_print_super(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 23
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 22
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 21
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 20
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 19
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 18
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EXT2_SUPER_MAGIC, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 %59, i8* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i32 %98)
  %100 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %113, %1
  %102 = load i32, i32* %3, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %101

116:                                              ; preds = %101
  %117 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %141, %116
  %120 = load i32, i32* %3, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %144

132:                                              ; preds = %122
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %119

144:                                              ; preds = %131, %119
  %145 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %146 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @DbgPrint(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
