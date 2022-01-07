; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_complete_message_answer.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_complete_message_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.tgl_message* }
%struct.tgl_message = type { i32, %struct.tgl_message* }

@TGLMF_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @complete_message_answer(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.tgl_message*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.tgl_message*, %struct.tgl_message** %13, align 8
  store %struct.tgl_message* %14, %struct.tgl_message** %11, align 8
  br label %15

15:                                               ; preds = %27, %5
  %16 = load %struct.tgl_message*, %struct.tgl_message** %11, align 8
  %17 = icmp ne %struct.tgl_message* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.tgl_message*, %struct.tgl_message** %11, align 8
  %20 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TGLMF_OUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i1 [ false, %15 ], [ %24, %18 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.tgl_message*, %struct.tgl_message** %11, align 8
  %29 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %28, i32 0, i32 1
  %30 = load %struct.tgl_message*, %struct.tgl_message** %29, align 8
  store %struct.tgl_message* %30, %struct.tgl_message** %11, align 8
  br label %15

31:                                               ; preds = %25
  %32 = load %struct.tgl_message*, %struct.tgl_message** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8**, i8*** %10, align 8
  %37 = call i32 @complete_spec_message_answer(%struct.tgl_message* %32, i32 %33, i8* %34, i32 %35, i8** %36)
  ret i32 %37
}

declare dso_local i32 @complete_spec_message_answer(%struct.tgl_message*, i32, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
