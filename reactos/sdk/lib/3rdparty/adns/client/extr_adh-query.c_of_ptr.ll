; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_of_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_of_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optioninfo = type { i32 }
%struct.query_node = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid IP address %s\00", align 1
@ads = common dso_local global i32 0, align 4
@ov_type = common dso_local global i64 0, align 8
@adns_r_none = common dso_local global i64 0, align 8
@adns_r_ptr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"adns_submit_reverse\00", align 1
@outstanding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_ptr(%struct.optioninfo* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.optioninfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.query_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  store %struct.optioninfo* %0, %struct.optioninfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call i32 @memset(%struct.sockaddr_in* %10, i32 0, i32 8)
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %16 = call i32 @inet_aton(i8* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @usageerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = call i32 @prep_query(%struct.query_node** %7, i32* %8)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @xstrsave(i8* %23)
  %25 = load %struct.query_node*, %struct.query_node** %7, align 8
  %26 = getelementptr inbounds %struct.query_node, %struct.query_node* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ads, align 4
  %28 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %29 = load i64, i64* @ov_type, align 8
  %30 = load i64, i64* @adns_r_none, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @adns_r_ptr, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load i64, i64* @ov_type, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.query_node*, %struct.query_node** %7, align 8
  %40 = load %struct.query_node*, %struct.query_node** %7, align 8
  %41 = getelementptr inbounds %struct.query_node, %struct.query_node* %40, i32 0, i32 0
  %42 = call i32 @adns_submit_reverse(i32 %27, %struct.sockaddr* %28, i64 %37, i32 %38, %struct.query_node* %39, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sysfail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* @outstanding, align 4
  %50 = load %struct.query_node*, %struct.query_node** %7, align 8
  %51 = call i32 @LIST_LINK_TAIL(i32 %49, %struct.query_node* %50)
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local i32 @usageerr(i8*, i8*) #1

declare dso_local i32 @prep_query(%struct.query_node**, i32*) #1

declare dso_local i32 @xstrsave(i8*) #1

declare dso_local i32 @adns_submit_reverse(i32, %struct.sockaddr*, i64, i32, %struct.query_node*, i32*) #1

declare dso_local i32 @sysfail(i8*, i32) #1

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.query_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
