; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_wpp.c_add_special_defines.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_wpp.c_add_special_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"\22%b %d %Y\22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"__DATE__\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\22%H:%M:%S\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"__TIME__\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@def_special = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_special_defines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_special_defines() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = call i32 @time(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %6 = call i32 @localtime(i32* %1)
  %7 = call i32 @strftime(i8* %5, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %9 = call %struct.TYPE_3__* @pp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %11 = call i32 @localtime(i32* %1)
  %12 = call i32 @strftime(i8* %10, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call %struct.TYPE_3__* @pp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = call %struct.TYPE_3__* @pp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %2, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i8*, i8** @def_special, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %18, %0
  %23 = call %struct.TYPE_3__* @pp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %2, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** @def_special, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local %struct.TYPE_3__* @pp_add_define(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
