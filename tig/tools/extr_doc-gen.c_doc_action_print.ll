; ModuleID = '/home/carl/AnghaBench/tig/tools/extr_doc-gen.c_doc_action_print.c'
source_filename = "/home/carl/AnghaBench/tig/tools/extr_doc-gen.c_doc_action_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_info = type { i8*, i32 }
%struct.doc_action_iterator = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"|%-24s|%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.request_info*, i8*)* @doc_action_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_action_print(i8* %0, %struct.request_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.request_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.doc_action_iterator*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.request_info* %1, %struct.request_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.doc_action_iterator*
  store %struct.doc_action_iterator* %9, %struct.doc_action_iterator** %7, align 8
  %10 = load %struct.doc_action_iterator*, %struct.doc_action_iterator** %7, align 8
  %11 = getelementptr inbounds %struct.doc_action_iterator, %struct.doc_action_iterator* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.doc_action_iterator*, %struct.doc_action_iterator** %7, align 8
  %17 = getelementptr inbounds %struct.doc_action_iterator, %struct.doc_action_iterator* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @doc_action_table_print(i32 0)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @doc_action_group_name_print(i8* %24)
  %26 = call i32 @doc_action_table_print(i32 1)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.doc_action_iterator*, %struct.doc_action_iterator** %7, align 8
  %29 = getelementptr inbounds %struct.doc_action_iterator, %struct.doc_action_iterator* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.doc_action_iterator*, %struct.doc_action_iterator** %7, align 8
  %31 = getelementptr inbounds %struct.doc_action_iterator, %struct.doc_action_iterator* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %23, %3
  %33 = load %struct.request_info*, %struct.request_info** %5, align 8
  %34 = getelementptr inbounds %struct.request_info, %struct.request_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @enum_name(i32 %35)
  %37 = load %struct.request_info*, %struct.request_info** %5, align 8
  %38 = getelementptr inbounds %struct.request_info, %struct.request_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %39)
  ret i32 1
}

declare dso_local i32 @doc_action_table_print(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @doc_action_group_name_print(i8*) #1

declare dso_local i8* @enum_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
