; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/largest_file/extr_largest_file.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/largest_file/extr_largest_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@MAXOFFSET_T = common dso_local global i64 0, align 8
@__const.main.mybuf = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sigxfsz = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create testfile\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to seek to end of testfile\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to write to end of file\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to seek to end of file\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"write errno=EFBIG|EINVAL: success\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Did not receive EFBIG\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"write completed successfully, test failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sigaction, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i64, i64* @MAXOFFSET_T, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.mybuf, i32 0, i32 0), i64 5, i1 false)
  %18 = load i32, i32* @S_IRUSR, align 4
  %19 = load i32, i32* @S_IWUSR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IRGRP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @S_IROTH, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @usage(i8* %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 2
  %34 = call i32 @sigemptyset(i32* %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @errno, align 4
  store i32 %37, i32* %3, align 4
  br label %126

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @sigxfsz, align 4
  %41 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @SIGXFSZ, align 4
  %43 = call i32 @sigaction(i32 %42, %struct.sigaction* %14, i32* null)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %3, align 4
  br label %126

47:                                               ; preds = %38
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @O_CREAT, align 4
  %54 = load i32, i32* @O_RDWR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @open(i8* %52, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %10, align 4
  %62 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %126

66:                                               ; preds = %47
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i64 @lseek64(i32 %67, i64 %68, i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %10, align 4
  %75 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %118

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %79 = call i32 @write(i32 %77, i8* %78, i32 1)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %10, align 4
  %84 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %118

85:                                               ; preds = %76
  store i64 0, i64* %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @SEEK_CUR, align 4
  %89 = call i64 @lseek64(i32 %86, i64 %87, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %10, align 4
  %94 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %118

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %98 = call i32 @write(i32 %96, i8* %97, i32 1)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load i32, i32* @errno, align 4
  %103 = load i32, i32* @EFBIG, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @errno, align 4
  %107 = load i32, i32* @EINVAL, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %10, align 4
  %113 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %109
  br label %117

115:                                              ; preds = %95
  %116 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %114
  br label %118

118:                                              ; preds = %117, %92, %82, %73
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @unlink(i8* %119)
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %118, %60, %45, %36
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @lseek64(i32, i64, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
