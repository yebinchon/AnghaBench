; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_checkpoint.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c":dw\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"--wait only valid when --discard also specified\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"missing pool argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [133 x i8] c"'zpool checkpoint' doesn't work on datasets. To save the state of a dataset from a specific point in time please use 'zfs snapshot'\0A\00", align 1
@ZPOOL_WAIT_CKPT_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_checkpoint(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 1
  %16 = load i32, i32* @no_argument, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 2
  store i32* null, i32** %18, align 16
  %19 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 3
  store i32 100, i32* %19, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 1
  %23 = load i32, i32* @no_argument, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %22, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 2
  store i32* null, i32** %25, align 16
  %26 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 3
  store i32 119, i32* %26, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %28 = bitcast %struct.option* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 32, i1 false)
  %29 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 1
  store i8 0, i8* %29, align 8
  %30 = load i64, i64* @B_FALSE, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* @B_FALSE, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %51, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %36 = call i32 @getopt_long(i32 %33, i8** %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.option* %35, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %51 [
    i32 100, label %40
    i32 119, label %42
    i32 63, label %44
  ]

40:                                               ; preds = %38
  %41 = load i64, i64* @B_TRUE, align 8
  store i64 %41, i64* %6, align 8
  br label %51

42:                                               ; preds = %38
  %43 = load i64, i64* @B_TRUE, align 8
  store i64 %43, i64* %7, align 8
  br label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @optopt, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* %46, i32 %47)
  %49 = load i64, i64* @B_FALSE, align 8
  %50 = call i32 @usage(i64 %49)
  br label %51

51:                                               ; preds = %44, %38, %42, %40
  br label %32

52:                                               ; preds = %32
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* %60)
  %62 = load i64, i64* @B_FALSE, align 8
  %63 = call i32 @usage(i64 %62)
  br label %64

64:                                               ; preds = %58, %55, %52
  %65 = load i64, i64* @optind, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load i64, i64* @optind, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8** %72, i8*** %5, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* %77)
  %79 = load i64, i64* @B_FALSE, align 8
  %80 = call i32 @usage(i64 %79)
  br label %81

81:                                               ; preds = %75, %64
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* %86)
  %88 = load i64, i64* @B_FALSE, align 8
  %89 = call i32 @usage(i64 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* @g_zfs, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = call i32* @zpool_open(i32 %94, i8* %95)
  store i32* %96, i32** %9, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i8*, i8** %8, align 8
  %100 = call i32* @strchr(i8* %99, i8 signext 47)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @gettext(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %102, %98
  store i32 1, i32* %3, align 4
  br label %134

107:                                              ; preds = %90
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = call i64 @zpool_discard_checkpoint(i32* %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* @ZPOOL_WAIT_CKPT_DISCARD, align 4
  %123 = call i32 @zpool_wait(i32* %121, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %117, %110
  br label %130

125:                                              ; preds = %107
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @zpool_checkpoint(i32* %126)
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %125, %124
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @zpool_close(i32* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %106
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i32* @zpool_open(i32, i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @zpool_discard_checkpoint(i32*) #2

declare dso_local i32 @zpool_wait(i32*, i32) #2

declare dso_local i64 @zpool_checkpoint(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
