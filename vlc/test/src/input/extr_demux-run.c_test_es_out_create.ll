; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_demux-run.c_test_es_out_create.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_demux-run.c_test_es_out_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.test_es_out_t = type { i32*, %struct.TYPE_3__, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: cannot create ES output.\0A\00", align 1
@es_out_cbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*)* @test_es_out_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @test_es_out_create(i32* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.test_es_out_t*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call %struct.test_es_out_t* @malloc(i32 24)
  store %struct.test_es_out_t* %6, %struct.test_es_out_t** %4, align 8
  %7 = load %struct.test_es_out_t*, %struct.test_es_out_t** %4, align 8
  %8 = icmp eq %struct.test_es_out_t* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.test_es_out_t*, %struct.test_es_out_t** %4, align 8
  %14 = getelementptr inbounds %struct.test_es_out_t, %struct.test_es_out_t* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.test_es_out_t*, %struct.test_es_out_t** %4, align 8
  %16 = getelementptr inbounds %struct.test_es_out_t, %struct.test_es_out_t* %15, i32 0, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* @es_out_cbs, i32** %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %2, align 8
  br label %21

21:                                               ; preds = %12, %9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %22
}

declare dso_local %struct.test_es_out_t* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
