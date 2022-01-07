; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_pool_list_free.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_pool_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"internal error: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pool_list_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UU_WALK_ROBUST, align 4
  %9 = call i32* @uu_avl_walk_start(i32 %7, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @fprintf(i32 %12, i8* %13)
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %21, %16
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_7__* @uu_avl_walk_next(i32* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %4, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @uu_avl_remove(i32 %24, %struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @zpool_close(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32 @free(%struct.TYPE_7__* %31)
  br label %17

33:                                               ; preds = %17
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uu_avl_walk_end(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @uu_avl_destroy(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uu_avl_pool_destroy(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = call i32 @free(%struct.TYPE_7__* %44)
  ret void
}

declare dso_local i32* @uu_avl_walk_start(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @gettext(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @uu_avl_walk_next(i32*) #1

declare dso_local i32 @uu_avl_remove(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zpool_close(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @uu_avl_walk_end(i32*) #1

declare dso_local i32 @uu_avl_destroy(i32) #1

declare dso_local i32 @uu_avl_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
