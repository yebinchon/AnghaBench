; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_async_unregister_and_exit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_async_unregister_and_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [139 x i8] c"sender='org.freedesktop.DBus',type='signal',interface='org.freedesktop.DBus',member='NameOwnerChanged',path='/org/freedesktop/DBus',arg0='\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"',\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"arg1='\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"arg2=''\00", align 1
@name_owner_change_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_async_unregister_and_exit(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sd_bus_get_unique_name(i8* %17, i8** %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @strjoina(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @name_owner_change_callback, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sd_bus_add_match_async(i8* %27, i32* null, i8* %28, i32 %29, i32* null, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %23
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sd_bus_release_name_async(i8* %37, i32* null, i8* %38, i32* null, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %42, %34, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_get_unique_name(i8*, i8**) #1

declare dso_local i8* @strjoina(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_add_match_async(i8*, i32*, i8*, i32, i32*, i8*) #1

declare dso_local i32 @sd_bus_release_name_async(i8*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
