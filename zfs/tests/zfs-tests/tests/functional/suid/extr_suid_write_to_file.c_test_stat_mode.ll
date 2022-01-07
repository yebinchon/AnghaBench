; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/suid/extr_suid_write_to_file.c_test_stat_mode.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/suid/extr_suid_write_to_file.c_test_stat_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"TESTDIR\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TESTFILE0\00", align 1
@__const.test_stat_mode.penv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@__const.test_stat_mode.buf = private unnamed_addr constant [5 x i8] c"test\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"getenv(penv[%d])\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s exists\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"stat(2) %o\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_stat_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stat_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.test_stat_mode.penv to i8*), i64 16, i1 false)
  %12 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_stat_mode.buf, i32 0, i32 0), i64 5, i1 false)
  %13 = load i32, i32* %2, align 4
  %14 = or i32 511, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @getenv(i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %26
  store i8* %24, i8** %27, align 8
  %28 = icmp eq i8* %24, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #4
  unreachable

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %15

38:                                               ; preds = %15
  %39 = call i32 @umask(i32 0)
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %41 = load i8*, i8** %40, align 16
  %42 = call i32 @stat(i8* %41, %struct.stat* %3)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %46 = load i8*, i8** %45, align 16
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @mkdir(i8* %46, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @exit(i32 2) #4
  unreachable

53:                                               ; preds = %44, %38
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @snprintf(i8* %54, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %58)
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %61 = call i32 @unlink(i8* %60)
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %63 = call i32 @stat(i8* %62, %struct.stat* %3)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load i32, i32* @stderr, align 4
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = call i32 @exit(i32 3) #4
  unreachable

70:                                               ; preds = %53
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @creat(i8* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i32 @exit(i32 4) #4
  unreachable

79:                                               ; preds = %70
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @close(i32 %80)
  %82 = call i32 @setuid(i32 65534)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i32 @exit(i32 5) #4
  unreachable

87:                                               ; preds = %79
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %89 = load i32, i32* @O_RDWR, align 4
  %90 = call i32 @open(i8* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @exit(i32 6) #4
  unreachable

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %99 = call i32 @write(i32 %97, i8* %98, i32 5)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 @exit(i32 7) #4
  unreachable

104:                                              ; preds = %96
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @close(i32 %105)
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %108 = call i32 @stat(i8* %107, %struct.stat* %3)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %112 = call i32 @exit(i32 8) #4
  unreachable

113:                                              ; preds = %104
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %115 = call i32 @unlink(i8* %114)
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @S_ISUID, align 4
  %119 = or i32 511, %118
  %120 = load i32, i32* @S_ISGID, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %117, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 511
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load i32, i32* @stderr, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = call i32 @exit(i32 9) #4
  unreachable

132:                                              ; preds = %113
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @creat(i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @setuid(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
