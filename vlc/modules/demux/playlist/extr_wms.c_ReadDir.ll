; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wms.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wms.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[Reference]\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unexpected entry \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Ref%u\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unexpected entry key \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mmsh\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %10

10:                                               ; preds = %62, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @vlc_stream_ReadLine(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @IsUTF8(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %62

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %62

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 61)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @msg_Warn(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %62

36:                                               ; preds = %26
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @msg_Warn(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %62

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strncasecmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @memcpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32* @input_item_New(i8* %54, i8* %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @input_item_node_AppendItem(i32* %57, i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @input_item_Release(i32* %60)
  br label %62

62:                                               ; preds = %53, %42, %32, %25, %20
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @free(i8* %63)
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %66
}

declare dso_local i8* @vlc_stream_ReadLine(i32) #1

declare dso_local i32 @IsUTF8(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
