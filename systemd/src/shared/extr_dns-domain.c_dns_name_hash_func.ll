; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_hash_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type { i32 }

@DNS_LABEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_name_hash_func(i8* %0, %struct.siphash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.siphash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.siphash* %1, %struct.siphash** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @assert(i8* %9)
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* @DNS_LABEL_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = trunc i64 %14 to i32
  %18 = call i32 @dns_label_unescape(i8** %3, i8* %16, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 2, i32* %8, align 4
  br label %34

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 2, i32* %8, align 4
  br label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ascii_strlower_n(i8* %16, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.siphash*, %struct.siphash** %4, align 8
  %31 = call i32 @siphash24_compress(i8* %16, i32 %29, %struct.siphash* %30)
  %32 = load %struct.siphash*, %struct.siphash** %4, align 8
  %33 = call i32 @siphash24_compress_byte(i32 0, %struct.siphash* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %26, %25, %21
  %35 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 2, label %38
  ]

37:                                               ; preds = %34
  br label %11

38:                                               ; preds = %34
  %39 = load %struct.siphash*, %struct.siphash** %4, align 8
  %40 = call i32 @string_hash_func(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.siphash* %39)
  ret void

41:                                               ; preds = %34
  unreachable
}

declare dso_local i32 @assert(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dns_label_unescape(i8**, i8*, i32, i32) #1

declare dso_local i32 @ascii_strlower_n(i8*, i32) #1

declare dso_local i32 @siphash24_compress(i8*, i32, %struct.siphash*) #1

declare dso_local i32 @siphash24_compress_byte(i32, %struct.siphash*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @string_hash_func(i8*, %struct.siphash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
