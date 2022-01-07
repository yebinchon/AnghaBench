; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_encode_auth_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_encode_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @encode_auth_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @encode_auth_data(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlenW(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 2
  %17 = mul nsw i32 %16, 4
  %18 = sdiv i32 %17, 3
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i8* @heap_alloc(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %49

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i8* %29, i8* %30, i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 32, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @HTTP_EncodeBase64(i8* %40, i32 %41, i8* %46)
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %28, %27
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @HTTP_EncodeBase64(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
