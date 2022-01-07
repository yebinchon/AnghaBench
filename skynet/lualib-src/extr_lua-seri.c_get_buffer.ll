; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_buffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.read_block*, i32)* @get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_buffer(i32* %0, %struct.read_block* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.read_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.read_block* %1, %struct.read_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.read_block*, %struct.read_block** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i8* @rb_read(%struct.read_block* %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.read_block*, %struct.read_block** %5, align 8
  %16 = call i32 @invalid_stream(i32* %14, %struct.read_block* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @lua_pushlstring(i32* %18, i8* %19, i32 %20)
  ret void
}

declare dso_local i8* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @invalid_stream(i32*, %struct.read_block*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
