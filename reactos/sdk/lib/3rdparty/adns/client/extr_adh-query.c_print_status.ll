; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_print_status.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-query.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"%s %d %s \00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.query_node*, %struct.TYPE_6__*)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status(i32 %0, %struct.query_node* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.query_node*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.query_node* %1, %struct.query_node** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @adns_errtypeabbrev(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @adns_errabbrev(i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @adns_strerror(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @strchr(i8* %16, i8 signext 34)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23, i8* %24)
  %26 = load i64, i64* @EOF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 (...) @outerr()
  br label %30

30:                                               ; preds = %28, %3
  %31 = load %struct.query_node*, %struct.query_node** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = call i32 @print_owner_ttl(%struct.query_node* %31, %struct.TYPE_6__* %32)
  %34 = load %struct.query_node*, %struct.query_node** %5, align 8
  %35 = getelementptr inbounds %struct.query_node, %struct.query_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i8* [ %47, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i32 @print_withspace(i8* %50)
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* @EOF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @outerr()
  br label %59

59:                                               ; preds = %57, %52
  ret void
}

declare dso_local i8* @adns_errtypeabbrev(i32) #1

declare dso_local i8* @adns_errabbrev(i32) #1

declare dso_local i8* @adns_strerror(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @printf(i8*, i8*, ...) #1

declare dso_local i32 @outerr(...) #1

declare dso_local i32 @print_owner_ttl(%struct.query_node*, %struct.TYPE_6__*) #1

declare dso_local i32 @print_withspace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
