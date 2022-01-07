; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_set_iovec_string_field.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_set_iovec_string_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @set_iovec_string_field(%struct.iovec* %0, i64* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iovec, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @strjoin(i8* %11, i8* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.iovec*, %struct.iovec** %5, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i64 %19
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @IOVEC_MAKE_STRING(i8* %22)
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.iovec* %21 to i8*
  %26 = bitcast %struct.iovec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %16, %4
  %28 = load i8*, i8** %9, align 8
  ret i8* %28
}

declare dso_local i8* @strjoin(i8*, i8*) #1

declare dso_local i32 @IOVEC_MAKE_STRING(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
