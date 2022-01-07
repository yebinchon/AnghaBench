; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_checkupvalcolor.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_checkupvalcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_checkupvalcolor(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32* @obj2gco(%struct.TYPE_4__* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @isblack(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @lua_assert(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @isgray(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @keepinvariant(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @resetoldbit(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @gray2black(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @markvalue(i32* %26, i32 %29)
  br label %38

31:                                               ; preds = %17
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @issweepphase(i32* %32)
  %34 = call i32 @lua_assert(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @makewhite(i32* %35, i32* %36)
  br label %38

38:                                               ; preds = %31, %21
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32* @obj2gco(%struct.TYPE_4__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isblack(i32*) #1

declare dso_local i64 @isgray(i32*) #1

declare dso_local i64 @keepinvariant(i32*) #1

declare dso_local i32 @resetoldbit(i32*) #1

declare dso_local i32 @gray2black(i32*) #1

declare dso_local i32 @markvalue(i32*, i32) #1

declare dso_local i32 @issweepphase(i32*) #1

declare dso_local i32 @makewhite(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
