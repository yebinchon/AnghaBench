; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_complete_spec_message_answer.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_complete_spec_message_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_message = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @complete_spec_message_answer(%struct.tgl_message* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tgl_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.tgl_message* %0, %struct.tgl_message** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %14 = icmp ne %struct.tgl_message* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %17 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %22 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %15, %5
  %28 = load i8**, i8*** %11, align 8
  store i8* null, i8** %28, align 8
  store i32 -1, i32* %6, align 4
  br label %89

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %33 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %38 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %64, %29
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %50 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @strncmp(i32 %57, i8* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %48, %44
  %63 = phi i1 [ false, %44 ], [ %61, %48 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %44

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.tgl_message*, %struct.tgl_message** %7, align 8
  %73 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @strdup(i32 %80)
  %82 = load i8**, i8*** %11, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @assert(i8* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %67
  %88 = load i8**, i8*** %11, align 8
  store i8* null, i8** %88, align 8
  store i32 -1, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %71, %27
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @assert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
