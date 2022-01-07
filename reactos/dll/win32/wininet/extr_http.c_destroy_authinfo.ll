; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_destroy_authinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_destroy_authinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpAuthInfo = type { %struct.HttpAuthInfo*, %struct.HttpAuthInfo*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.HttpAuthInfo*)* @destroy_authinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_authinfo(%struct.HttpAuthInfo* %0) #0 {
  %2 = alloca %struct.HttpAuthInfo*, align 8
  store %struct.HttpAuthInfo* %0, %struct.HttpAuthInfo** %2, align 8
  %3 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %4 = icmp ne %struct.HttpAuthInfo* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %8 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %7, i32 0, i32 3
  %9 = call i64 @SecIsValidHandle(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %13 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %12, i32 0, i32 3
  %14 = call i32 @DeleteSecurityContext(i32* %13)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %17 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %16, i32 0, i32 2
  %18 = call i64 @SecIsValidHandle(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %22 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %21, i32 0, i32 2
  %23 = call i32 @FreeCredentialsHandle(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %26 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %25, i32 0, i32 1
  %27 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %26, align 8
  %28 = call i32 @heap_free(%struct.HttpAuthInfo* %27)
  %29 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %30 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %29, i32 0, i32 0
  %31 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %30, align 8
  %32 = call i32 @heap_free(%struct.HttpAuthInfo* %31)
  %33 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %2, align 8
  %34 = call i32 @heap_free(%struct.HttpAuthInfo* %33)
  br label %35

35:                                               ; preds = %24, %5
  ret void
}

declare dso_local i64 @SecIsValidHandle(i32*) #1

declare dso_local i32 @DeleteSecurityContext(i32*) #1

declare dso_local i32 @FreeCredentialsHandle(i32*) #1

declare dso_local i32 @heap_free(%struct.HttpAuthInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
