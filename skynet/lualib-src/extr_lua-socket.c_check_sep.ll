; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_check_sep.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_check_sep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_node = type { i32, %struct.buffer_node*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_node*, i32, i8*, i32)* @check_sep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sep(%struct.buffer_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.buffer_node* %0, %struct.buffer_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %11

11:                                               ; preds = %48, %4
  %12 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %11
  %21 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %22 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @memcmp(i64 %26, i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %11
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @memcmp(i64 %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %59

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %50 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %49, i32 0, i32 1
  %51 = load %struct.buffer_node*, %struct.buffer_node** %50, align 8
  store %struct.buffer_node* %51, %struct.buffer_node** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

59:                                               ; preds = %46, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
