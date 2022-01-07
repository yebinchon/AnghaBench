; ModuleID = '/home/carl/AnghaBench/vlc/modules/logger/extr_file.c_LogHtml.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/logger/extr_file.c_LogHtml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32* }

@LogHtml.color = internal constant [4 x i32] [i32 16777215, i32 16737894, i32 16777062, i32 11184810], align 16
@.str = private unnamed_addr constant [34 x i8] c"%s%s: <span style=\22color: #%06x\22>\00", align 1
@msg_type = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"</span>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_5__*, i8*, i32)* @LogHtml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LogHtml(i8* %0, i32 %1, %struct.TYPE_5__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %49

24:                                               ; preds = %5
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @flockfile(i32* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32*, i32** @msg_type, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @LogHtml.color, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %35, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @vfprintf(i32* %41, i8* %42, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @funlockfile(i32* %47)
  br label %49

49:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @flockfile(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @funlockfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
