; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_repo_id_list_to_json.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_repo_id_list_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@JSON_COMPACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to dump json.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @repo_id_list_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @repo_id_list_to_json(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = call i32* (...) @json_array()
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @json_string(i8* %18)
  %20 = call i32 @json_array_append_new(i32* %17, i32 %19)
  br label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @JSON_COMPACT, align 4
  %28 = call i8* @json_dumps(i32* %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = call i32 @seaf_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @json_decref(i32* %33)
  store i8* null, i8** %2, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @json_decref(i32* %36)
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
