; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_add_to_keymap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_add_to_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32 }

@NoSymbol = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Bad keysym \22%s\22 in keymap %s (ignoring)\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Adding translation, keysym=0x%x, scancode=0x%x, modifiers=0x%x\0A\00", align 1
@KEYMAP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i32, i32, i8*)* @add_to_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_keymap(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @XStringToKeysym(i8* %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @NoSymbol, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @DEBUG_KBD(i8* %20)
  br label %59

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DEBUG_KBD(i8* %28)
  %30 = call i64 @xmalloc(i32 8)
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %12, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = call i32 @memset(%struct.TYPE_8__* %32, i32 0, i32 8)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @KEYMAP_MASK, align 8
  %46 = and i64 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @free_key_translation(%struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @KEYMAP_MASK, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %57
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %58, align 8
  br label %59

59:                                               ; preds = %22, %18
  ret void
}

declare dso_local i64 @XStringToKeysym(i8*) #1

declare dso_local i32 @DEBUG_KBD(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @free_key_translation(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
