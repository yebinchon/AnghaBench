; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_addfriend_norequest.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_addfriend_norequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FAERR_ALREADYSENT = common dso_local global i32 0, align 4
@FAERR_BADCHECKSUM = common dso_local global i32 0, align 4
@FAERR_OWNKEY = common dso_local global i32 0, align 4
@FRIEND_CONFIRMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_addfriend_norequest(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @getfriend_id(%struct.TYPE_7__* %6, i32* %7)
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FAERR_ALREADYSENT, align 4
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @public_key_valid(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @FAERR_BADCHECKSUM, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @id_equal(i32* %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @FAERR_OWNKEY, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @FRIEND_CONFIRMED, align 4
  %33 = call i32 @init_new_friend(%struct.TYPE_7__* %30, i32* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %16, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @getfriend_id(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @public_key_valid(i32*) #1

declare dso_local i64 @id_equal(i32*, i32) #1

declare dso_local i32 @init_new_friend(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
