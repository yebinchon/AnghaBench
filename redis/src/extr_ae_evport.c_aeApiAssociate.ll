; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae_evport.c_aeApiAssociate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae_evport.c_aeApiAssociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_READABLE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@evport_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: port_associate(%d, 0x%x) = \00", align 1
@PORT_SOURCE_FD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: port_associate: %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"aeApiAssociate: event port limit exceeded.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @aeApiAssociate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeApiAssociate(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @AE_READABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AE_WRITABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @POLLOUT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* @evport_debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PORT_SOURCE_FD, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @port_associate(i32 %39, i32 %40, i32 %41, i32 %42, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i64, i64* @evport_debug, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %38
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @strerror(i32 %57)
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %55 ], [ %58, %56 ]
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %60)
  br label %62

62:                                               ; preds = %59, %38
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %65
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @port_associate(i32, i32, i32, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
