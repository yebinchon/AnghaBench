; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_find_installed_ports.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_find_installed_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@PORTNAME_MAXSIZE = common dso_local global i32 0, align 4
@have_com = common dso_local global i8* null, align 8
@have_lpt = common dso_local global i8* null, align 8
@have_file = common dso_local global i8* null, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"no ports found\0A\00", align 1
@PORTNAME_MINSIZE = common dso_local global i64 0, align 8
@PORTNAME_PREFIX = common dso_local global i32 0, align 4
@portname_comW = common dso_local global i32 0, align 4
@portname_lptW = common dso_local global i32 0, align 4
@portname_fileW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_installed_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_installed_ports() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  %9 = load i32, i32* @PORTNAME_MAXSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i8*, i8** @have_com, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** @have_lpt, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** @have_file, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  %19 = call i64 @pEnumPorts(i32* null, i32 1, i32* null, i64 0, i64* %4, i64* %5)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %0
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i64, i64* %4, align 8
  %29 = call %struct.TYPE_4__* @HeapAlloc(i32 %27, i32 0, i64 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %1, align 8
  br label %30

30:                                               ; preds = %26, %22, %0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = bitcast %struct.TYPE_4__* %31 to i32*
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @pEnumPorts(i32* null, i32 1, i32* %32, i64 %33, i64* %4, i64* %5)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = call i32 @skip(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %41 = call i32 @HeapFree(i32 %39, i32 0, %struct.TYPE_4__* %40)
  store i32 1, i32* %8, align 4
  br label %157

42:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %150, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %153

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @lstrlenW(i8* %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PORTNAME_MINSIZE, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %150

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @PORTNAME_MAXSIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %150

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %150

74:                                               ; preds = %62
  %75 = bitcast i8* %12 to i8**
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @PORTNAME_PREFIX, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = call i32 @memcpy(i8** %75, i8* %80, i64 %83)
  %85 = load i32, i32* @PORTNAME_PREFIX, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %12, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** @have_com, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %74
  %93 = load i32, i32* @portname_comW, align 4
  %94 = call i64 @lstrcmpiW(i8* %12, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  %104 = mul i64 %103, 1
  %105 = call i32 @memcpy(i8** @have_com, i8* %101, i64 %104)
  br label %106

106:                                              ; preds = %96, %92, %74
  %107 = load i8*, i8** @have_lpt, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @portname_lptW, align 4
  %113 = call i64 @lstrcmpiW(i8* %12, i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  %123 = mul i64 %122, 1
  %124 = call i32 @memcpy(i8** @have_lpt, i8* %120, i64 %123)
  br label %125

125:                                              ; preds = %115, %111, %106
  %126 = load i8*, i8** @have_file, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* @portname_fileW, align 4
  %137 = call i64 @lstrcmpiW(i8* %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, 1
  %147 = mul i64 %146, 1
  %148 = call i32 @memcpy(i8** @have_file, i8* %144, i64 %147)
  br label %149

149:                                              ; preds = %139, %130, %125
  br label %150

150:                                              ; preds = %149, %62, %57, %47
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %7, align 8
  br label %43

153:                                              ; preds = %43
  %154 = call i32 (...) @GetProcessHeap()
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %156 = call i32 @HeapFree(i32 %154, i32 0, %struct.TYPE_4__* %155)
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %153, %37
  %158 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %8, align 4
  switch i32 %159, label %161 [
    i32 0, label %160
    i32 1, label %160
  ]

160:                                              ; preds = %157, %157
  ret void

161:                                              ; preds = %157
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pEnumPorts(i32*, i32, i32*, i64, i64*, i64*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i32 @memcpy(i8**, i8*, i64) #2

declare dso_local i64 @lstrcmpiW(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
