; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-debugchannel.c_lread.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-debugchannel.c_lread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_box = type { i32 }
%struct.command = type { i32 }

@METANAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lread(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.channel_box*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.command*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @METANAME, align 4
  %9 = call %struct.channel_box* @luaL_checkudata(i32* %7, i32 1, i32 %8)
  store %struct.channel_box* %9, %struct.channel_box** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call double @luaL_optnumber(i32* %10, i32 2, i32 0)
  store double %11, double* %5, align 8
  %12 = load %struct.channel_box*, %struct.channel_box** %4, align 8
  %13 = getelementptr inbounds %struct.channel_box, %struct.channel_box* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load double, double* %5, align 8
  %16 = call %struct.command* @channel_read(i32 %14, double %15)
  store %struct.command* %16, %struct.command** %6, align 8
  %17 = load %struct.command*, %struct.command** %6, align 8
  %18 = icmp eq %struct.command* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.command*, %struct.command** %6, align 8
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i64 1
  %24 = bitcast %struct.command* %23 to i8*
  %25 = load %struct.command*, %struct.command** %6, align 8
  %26 = getelementptr inbounds %struct.command, %struct.command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lua_pushlstring(i32* %21, i8* %24, i32 %27)
  %29 = load %struct.command*, %struct.command** %6, align 8
  %30 = call i32 @free(%struct.command* %29)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.channel_box* @luaL_checkudata(i32*, i32, i32) #1

declare dso_local double @luaL_optnumber(i32*, i32, i32) #1

declare dso_local %struct.command* @channel_read(i32, double) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @free(%struct.command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
