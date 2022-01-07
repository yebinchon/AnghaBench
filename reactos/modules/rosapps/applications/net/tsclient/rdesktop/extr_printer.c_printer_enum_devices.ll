; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printer.c_printer_enum_devices.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printer.c_printer_enum_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@DEVICE_TYPE_PRINTER = common dso_local global i64 0, align 8
@RDPDR_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PRN\00", align 1
@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mydeskjet\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"HP Color LaserJet 8500 PS\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"PRINTER %s to %s driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printer_enum_devices(%struct.TYPE_6__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DEVICE_TYPE_PRINTER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 58
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %140, %43
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @next_arg(i8* %45, i8 signext 44)
  store i8* %46, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RDPDR_MAX_DEVICES, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %55, label %182

55:                                               ; preds = %53
  %56 = call i8* @xmalloc(i32 24)
  %57 = bitcast i8* %56 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcpy(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = call i32 @l_to_a(i32 %80, i32 10)
  %82 = call i32 @strcat(i8* %76, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %55
  %88 = load i32, i32* @True, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %95

91:                                               ; preds = %55
  %92 = load i32, i32* @False, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i8*, i8** %6, align 8
  %97 = call i8* @next_arg(i8* %96, i8 signext 61)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %104, align 8
  br label %117

105:                                              ; preds = %95
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = add nsw i32 %107, 1
  %109 = call i8* @xmalloc(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @strcpy(i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %105, %102
  %118 = load i8*, i8** %9, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i8*, i8** %9, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120, %117
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %127, align 8
  br label %140

128:                                              ; preds = %120
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = add nsw i32 %130, 1
  %132 = call i8* @xmalloc(i32 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @strcpy(i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %128, %125
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %149, i8* %152, i8* %155)
  %157 = load i64, i64* @DEVICE_TYPE_PRINTER, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i64 %157, i64* %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = bitcast %struct.TYPE_7__* %166 to i8*
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  store i8* %167, i8** %175, align 8
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load i8*, i8** %8, align 8
  store i8* %181, i8** %6, align 8
  br label %44

182:                                              ; preds = %53
  %183 = load i32, i32* %10, align 4
  ret i32 %183
}

declare dso_local i8* @next_arg(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @l_to_a(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
