; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_server_destroy.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_server_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @varlink_server_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @varlink_server_destroy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i32 @varlink_server_shutdown(%struct.TYPE_7__* %9)
  br label %11

11:                                               ; preds = %17, %8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @hashmap_steal_first_key(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @free(i8* %18)
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hashmap_free(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hashmap_free(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sd_event_unref(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call %struct.TYPE_7__* @mfree(%struct.TYPE_7__* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %2, align 8
  br label %39

39:                                               ; preds = %20, %7
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local i32 @varlink_server_shutdown(%struct.TYPE_7__*) #1

declare dso_local i8* @hashmap_steal_first_key(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local %struct.TYPE_7__* @mfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
