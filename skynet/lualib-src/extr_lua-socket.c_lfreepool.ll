; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lfreepool.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lfreepool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_node = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lfreepool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfreepool(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.buffer_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_node*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.buffer_node* @lua_touserdata(i32* %7, i32 1)
  store %struct.buffer_node* %8, %struct.buffer_node** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_rawlen(i32* %9, i32 1)
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.buffer_node*, %struct.buffer_node** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %19, i64 %21
  store %struct.buffer_node* %22, %struct.buffer_node** %6, align 8
  %23 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %24 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %29 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @skynet_free(i32* %30)
  %32 = load %struct.buffer_node*, %struct.buffer_node** %6, align 8
  %33 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14

38:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.buffer_node* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @skynet_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
