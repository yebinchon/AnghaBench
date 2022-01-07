; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_dprintf.c_uu_dprintf_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_dprintf.c_uu_dprintf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@UU_NAME_DOMAIN = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @uu_dprintf_create(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UU_NAME_DOMAIN, align 4
  %14 = call i32 @uu_check_name(i8* %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %18 = call i32 @uu_set_error(i32 %17)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %50

19:                                               ; preds = %11, %3
  %20 = call %struct.TYPE_5__* @uu_zalloc(i32 16)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %8, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %50

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @strdup(i8* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = call i32 @uu_free(%struct.TYPE_5__* %36)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %50

38:                                               ; preds = %26
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %4, align 8
  br label %50

50:                                               ; preds = %42, %35, %22, %16
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %51
}

declare dso_local i32 @uu_check_name(i8*, i32) #1

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local %struct.TYPE_5__* @uu_zalloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @uu_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
