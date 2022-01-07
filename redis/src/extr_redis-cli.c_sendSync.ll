; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sendSync.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sendSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SYNC\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing to master\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error reading bulk length while SYNCing\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SYNC with master failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"EOF:\00", align 1
@RDB_EOF_MARK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sendSync(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @write(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %11 = icmp ne i32 %10, 6
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %16, %46
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @read(i32 %19, i8* %20, i32 1)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %47

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %43, %38
  br label %18

47:                                               ; preds = %37
  %48 = load i8*, i8** %7, align 8
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %55 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %47
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = call i64 @strlen(i8* %64)
  %66 = load i64, i64* @RDB_EOF_MARK_SIZE, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  %72 = load i64, i64* @RDB_EOF_MARK_SIZE, align 8
  %73 = call i32 @memcpy(i8* %69, i8* %71, i64 %72)
  store i64 0, i64* %3, align 8
  br label %78

74:                                               ; preds = %62, %57
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i64 @strtoull(i8* %76, i32* null, i32 10)
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
