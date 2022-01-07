; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_save_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_save_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, %struct.TYPE_7__*)* @save_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_commit(%struct.TYPE_6__* %0, i8* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = call i32* @commit_to_json_object(%struct.TYPE_7__* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i8* @json_dumps(i32* %15, i32 0)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @json_decref(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i64 @seaf_obj_store_write_obj(i32 %23, i8* %24, i32 %25, i32 %28, i8* %29, i32 %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @g_free(i8* %36)
  store i32 -1, i32* %5, align 4
  br label %41

38:                                               ; preds = %4
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @free(i8* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @commit_to_json_object(%struct.TYPE_7__*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i64 @seaf_obj_store_write_obj(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
