; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_read_buf.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.buffer = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_read_buf(%struct.io* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.io*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer, align 8
  store %struct.io* %0, %struct.io** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.io*, %struct.io** %5, align 8
  %12 = call i64 @io_get(%struct.io* %11, %struct.buffer* %9, i8 signext 10, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @string_trim(i64 %16)
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @strlen(i64 %24)
  %26 = call i32 @string_ncopy_do(i8* %19, i64 %20, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %4
  %28 = load %struct.io*, %struct.io** %5, align 8
  %29 = call i64 @io_done(%struct.io* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ true, %31 ], [ %37, %35 ]
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i1 [ false, %27 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i8 signext, i32) #2

declare dso_local i64 @string_trim(i64) #2

declare dso_local i32 @string_ncopy_do(i8*, i64, i64, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i64 @io_done(%struct.io*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
