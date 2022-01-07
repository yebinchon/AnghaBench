; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_Open_LuaTelnet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_Open_LuaTelnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"telnet-password\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"password not configured\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Please specify the password in the preferences.\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Open_LuaTelnet(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @var_CreateGetNonEmptyString(i32* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @msg_Err(i32* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @msg_Info(i32* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @free(i8* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @Start_LuaIntf(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i8* @var_CreateGetNonEmptyString(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @msg_Info(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Start_LuaIntf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
