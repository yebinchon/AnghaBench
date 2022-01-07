; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_set_server_property.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_set_server_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@seaf = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_set_server_property(i8* %0, i8* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %12, %4
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %21 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %22 = call i32 @g_set_error(i32** %19, i32 %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @seaf_repo_manager_set_server_property(i32 %26, i8* %27, i8* %28, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i32 @seaf_repo_manager_set_server_property(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
