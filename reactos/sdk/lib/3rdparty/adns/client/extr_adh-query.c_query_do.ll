; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_query_do.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_query_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_node = type { i32, i32 }

@ads = common dso_local global i32 0, align 4
@ov_type = common dso_local global i64 0, align 8
@adns_r_none = common dso_local global i64 0, align 8
@adns_r_addr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"adns_submit\00", align 1
@outstanding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @query_do(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.query_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @prep_query(%struct.query_node** %3, i32* %4)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @xstrsave(i8* %7)
  %9 = load %struct.query_node*, %struct.query_node** %3, align 8
  %10 = getelementptr inbounds %struct.query_node, %struct.query_node* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ads, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = load i64, i64* @ov_type, align 8
  %14 = load i64, i64* @adns_r_none, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @adns_r_addr, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @ov_type, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.query_node*, %struct.query_node** %3, align 8
  %24 = load %struct.query_node*, %struct.query_node** %3, align 8
  %25 = getelementptr inbounds %struct.query_node, %struct.query_node* %24, i32 0, i32 0
  %26 = call i32 @adns_submit(i32 %11, i8* %12, i64 %21, i32 %22, %struct.query_node* %23, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sysfail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* @outstanding, align 4
  %34 = load %struct.query_node*, %struct.query_node** %3, align 8
  %35 = call i32 @LIST_LINK_TAIL(i32 %33, %struct.query_node* %34)
  ret void
}

declare dso_local i32 @prep_query(%struct.query_node**, i32*) #1

declare dso_local i32 @xstrsave(i8*) #1

declare dso_local i32 @adns_submit(i32, i8*, i64, i32, %struct.query_node*, i32*) #1

declare dso_local i32 @sysfail(i8*, i32) #1

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.query_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
