; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-interleaving.c_append_number.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-interleaving.c_append_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.iovec = type { i32 }

@append_number.previous_ts = internal global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"NUMBER=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @append_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_number(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca [1 x %struct.iovec], align 4
  %10 = alloca %struct.iovec, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = call i32 @dual_timestamp_get(%struct.TYPE_4__* %8)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @append_number.previous_ts, i32 0, i32 0), align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @append_number.previous_ts, i32 0, i32 0), align 8
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @append_number.previous_ts, i32 0, i32 1), align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @append_number.previous_ts, i32 0, i32 1), align 8
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @append_number.previous_ts to i8*), i8* align 8 %30, i64 16, i1 false)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @asprintf(i8** %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @IOVEC_MAKE_STRING(i8* %37)
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.iovec* %36 to i8*
  %41 = bitcast %struct.iovec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @journal_file_append_entry(i32* %42, %struct.TYPE_4__* %8, i32* null, %struct.iovec* %43, i32 1, i32* %44, i32* null, i32* null)
  %46 = call i32 @assert_ret(i32 %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  ret void
}

declare dso_local i32 @dual_timestamp_get(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @IOVEC_MAKE_STRING(i8*) #1

declare dso_local i32 @assert_ret(i32) #1

declare dso_local i32 @journal_file_append_entry(i32*, %struct.TYPE_4__*, i32*, %struct.iovec*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
