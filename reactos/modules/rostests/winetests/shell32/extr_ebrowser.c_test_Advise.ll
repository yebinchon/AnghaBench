; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_test_Advise.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_test_Advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ebevents = common dso_local global i32 0, align 4
@ebev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%d: got (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Advise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Advise() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* @ebevents, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 2, i32 0), align 8
  store %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 2), %struct.TYPE_4__** %2, align 8
  %7 = call i32 @ebrowser_instantiate(i32** %1)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @IExplorerBrowser_Unadvise(i32* %8, i32 11)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @E_INVALIDARG, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %0
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32*, i32** %1, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %23
  %25 = call i32 @IExplorerBrowser_Advise(i32* %20, %struct.TYPE_4__* %21, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @ebrowser_initialize(i32* %36)
  store i32 5, i32* %5, align 4
  br label %38

38:                                               ; preds = %54, %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32*, i32** %1, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %45
  %47 = call i32 @IExplorerBrowser_Advise(i32* %42, %struct.TYPE_4__* %43, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %59 = icmp eq i32 %58, 10
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @ebrowser_browse_to_desktop(i32* %63)
  %65 = call i32 (...) @process_msgs()
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %67 = icmp eq i32 %66, 10
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 4, i32* %5, align 4
  br label %71

71:                                               ; preds = %87, %57
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IExplorerBrowser_Unadvise(i32* %75, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @S_OK, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %71

90:                                               ; preds = %71
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @ebrowser_browse_to_desktop(i32* %91)
  %93 = call i32 (...) @process_msgs()
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %95 = icmp eq i32 %94, 6
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %123, %90
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 10
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = icmp sgt i32 %106, 7
  br i1 %107, label %108, label %122

108:                                              ; preds = %105, %102
  %109 = load i32*, i32** %1, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IExplorerBrowser_Unadvise(i32* %109, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @S_OK, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %108, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %99

126:                                              ; preds = %99
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %131 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @ebrowser_browse_to_desktop(i32* %132)
  %134 = call i32 (...) @process_msgs()
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 1), align 4
  %139 = call i32 (i32, i8*, i32, ...) @ok(i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %143 = call i32 @IExplorerBrowser_Advise(i32* %140, %struct.TYPE_4__* %141, i32* %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @S_OK, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (i32, i8*, i32, ...) @ok(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %1, align 8
  %156 = call i32 @IExplorerBrowser_Destroy(i32* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @S_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %4, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ebev, i32 0, i32 0), align 8
  %167 = call i32 (i32, i8*, i32, ...) @ok(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i32*, i32** %1, align 8
  %169 = call i32 @IExplorerBrowser_Release(i32* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  ret void
}

declare dso_local i32 @ebrowser_instantiate(i32**) #1

declare dso_local i32 @IExplorerBrowser_Unadvise(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IExplorerBrowser_Advise(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ebrowser_initialize(i32*) #1

declare dso_local i32 @ebrowser_browse_to_desktop(i32*) #1

declare dso_local i32 @process_msgs(...) #1

declare dso_local i32 @IExplorerBrowser_Destroy(i32*) #1

declare dso_local i32 @IExplorerBrowser_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
