; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dudeldu\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.context, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.context* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  store i32 4711, i32* %12, align 4
  %13 = call i32 @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = call i32 @assert_se(i32 %13)
  %16 = load i32, i32* @AF_UNIX, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @socketpair(i32 %16, i32 %17, i32 0, i32 %19)
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* @server, align 4
  %25 = call i32 @pthread_create(i32* %7, i32* null, i32 %24, %struct.context* %6)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %2
  %32 = call i32 @client(%struct.context* %6)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pthread_join(i32 %33, i8** %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @PTR_TO_INT(i8* %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @PTR_TO_INT(i8* %50)
  store i32 %51, i32* %3, align 4
  br label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @free(i32 %54)
  %56 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free(i32 %57)
  %59 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %52, %49, %43, %37, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i64 @socketpair(i32, i32, i32, i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.context*) #2

declare dso_local i32 @client(%struct.context*) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @PTR_TO_INT(i8*) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
