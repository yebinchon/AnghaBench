; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_normal_text.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_normal_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i8*)* @rndr_normal_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_normal_text(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.buf*, %struct.buf** %5, align 8
  %8 = icmp ne %struct.buf* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = load %struct.buf*, %struct.buf** %5, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @escape_html(%struct.buf* %10, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @escape_html(%struct.buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
