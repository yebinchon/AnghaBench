; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_SaveHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_SaveHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gOurDirectoryPath = common dso_local global i8* null, align 8
@kHistoryFileName = common dso_local global i32 0, align 4
@Vt100VisibleStrlen = common dso_local global i32 0, align 4
@gl_strlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveHistory() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = load i8*, i8** @gOurDirectoryPath, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* @kHistoryFileName, align 4
  %11 = call i32 @OurDirectoryPath(i8* %9, i32 256, i32 %10)
  %12 = load i32, i32* @Vt100VisibleStrlen, align 4
  store i32 %12, i32* @gl_strlen, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %14 = call i32 @gl_histsavefile(i8* %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %16 = call i32 @_chmod(i8* %15, i32 384)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i32 @gl_histsavefile(i8*) #1

declare dso_local i32 @_chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
