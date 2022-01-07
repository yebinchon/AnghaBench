; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_list_util.c_ks_list_new_entry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_list_util.c_ks_list_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.ks_list = type { i32, i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ks_list_new_entry(%struct.ks_list* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.ks_list*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ks_list* %0, %struct.ks_list** %3, align 8
  %6 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %7 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %11 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %16 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 10
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %20 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %23 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %21, i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %14
  %32 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %33 = call i32 @ks_list_free(%struct.ks_list* %32)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %58

34:                                               ; preds = %14
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %37 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %36, i32 0, i32 2
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %40 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %43 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %45
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @VLC_KEYSTORE_VALUES_INIT(i32 %51)
  %53 = load %struct.ks_list*, %struct.ks_list** %3, align 8
  %54 = getelementptr inbounds %struct.ks_list, %struct.ks_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %2, align 8
  br label %58

58:                                               ; preds = %38, %31
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %59
}

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ks_list_free(%struct.ks_list*) #1

declare dso_local i32 @VLC_KEYSTORE_VALUES_INIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
