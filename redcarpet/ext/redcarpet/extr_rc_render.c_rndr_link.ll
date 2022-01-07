; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_render.c_rndr_link.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_render.c_rndr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, %struct.buf*, %struct.buf*, i8*)* @rndr_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_link(%struct.buf* %0, %struct.buf* %1, %struct.buf* %2, %struct.buf* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.buf* %1, %struct.buf** %8, align 8
  store %struct.buf* %2, %struct.buf** %9, align 8
  store %struct.buf* %3, %struct.buf** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.buf*, %struct.buf** %8, align 8
  %13 = call i32 @buf2str(%struct.buf* %12)
  %14 = load %struct.buf*, %struct.buf** %9, align 8
  %15 = call i32 @buf2str(%struct.buf* %14)
  %16 = load %struct.buf*, %struct.buf** %10, align 8
  %17 = call i32 @buf2str(%struct.buf* %16)
  %18 = call i32 @SPAN_CALLBACK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3, i32 %13, i32 %15, i32 %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @SPAN_CALLBACK(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @buf2str(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
