; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_llex.c_trydecpoint.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_llex.c_trydecpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lconv = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1
@TK_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*)* @trydecpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trydecpoint(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.lconv*, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = call %struct.lconv* (...) @localeconv()
  store %struct.lconv* %7, %struct.lconv** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  store i8 %10, i8* %6, align 1
  %11 = load %struct.lconv*, %struct.lconv** %5, align 8
  %12 = icmp ne %struct.lconv* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.lconv*, %struct.lconv** %5, align 8
  %15 = getelementptr inbounds %struct.lconv, %struct.lconv* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %13
  %22 = phi i32 [ %19, %13 ], [ 46, %20 ]
  %23 = trunc i32 %22 to i8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8 %23, i8* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i8, i8* %6, align 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = call i32 @buffreplace(%struct.TYPE_8__* %26, i8 signext %27, i8 signext %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @luaZ_buffer(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @luaO_str2d(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %21
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = call i32 @buffreplace(%struct.TYPE_8__* %41, i8 signext %44, i8 signext 46)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32, i32* @TK_NUMBER, align 4
  %48 = call i32 @luaX_lexerror(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40, %21
  ret void
}

declare dso_local %struct.lconv* @localeconv(...) #1

declare dso_local i32 @buffreplace(%struct.TYPE_8__*, i8 signext, i8 signext) #1

declare dso_local i32 @luaO_str2d(i32, i32*) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32 @luaX_lexerror(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
