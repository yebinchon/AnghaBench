; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWORKAREA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWORKAREA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"testing SPI_{GET,SET}WORKAREA\0A\00", align 1
@SPI_GETWORKAREA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SPI_{GET,SET}WORKAREA\00", align 1
@SPI_SETWORKAREA = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SPI_SETWORKAREA\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoA: rc=%d err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"right: got %d instead of %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"bottom: got %d instead of %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETWORKAREA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETWORKAREA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = load i32, i32* @SPI_GETWORKAREA, align 4
  %8 = call i32 @SystemParametersInfoA(i32 %7, i32 0, %struct.TYPE_6__* %2, i32 0)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @test_error_msg(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %178

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @SetRect(%struct.TYPE_6__* %4, i32 %15, i32 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @SPI_SETWORKAREA, align 4
  %26 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %27 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @SystemParametersInfoA(i32 %25, i32 0, %struct.TYPE_6__* %4, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @test_error_msg(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %13
  br label %178

34:                                               ; preds = %13
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @SPI_GETWORKAREA, align 4
  %40 = call i32 @SystemParametersInfoA(i32 %39, i32 0, %struct.TYPE_6__* %3, i32 0)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %43)
  %45 = call i32 @EqualRect(%struct.TYPE_6__* %3, %struct.TYPE_6__* %4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @SPI_SETWORKAREA, align 4
  %49 = call i32 @test_change_message(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %47, %34
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @eq(i32 %52, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eq(i32 %57, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 16
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 16
  %73 = icmp slt i32 %69, %72
  br label %74

74:                                               ; preds = %67, %50
  %75 = phi i1 [ false, %50 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %78, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 16
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 16
  %94 = icmp slt i32 %90, %93
  br label %95

95:                                               ; preds = %88, %74
  %96 = phi i1 [ false, %74 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %99, i32 %101)
  %103 = bitcast %struct.TYPE_6__* %4 to i8*
  %104 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 16, i1 false)
  %105 = load i32, i32* @SPI_SETWORKAREA, align 4
  %106 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %107 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @SystemParametersInfoA(i32 %105, i32 0, %struct.TYPE_6__* %2, i32 %108)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* @SPI_GETWORKAREA, align 4
  %115 = call i32 @SystemParametersInfoA(i32 %114, i32 0, %struct.TYPE_6__* %3, i32 0)
  store i32 %115, i32* %1, align 4
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* %1, align 4
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 @EqualRect(%struct.TYPE_6__* %3, %struct.TYPE_6__* %4)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %95
  %123 = load i32, i32* @SPI_SETWORKAREA, align 4
  %124 = call i32 @test_change_message(i32 %123, i32 0)
  br label %125

125:                                              ; preds = %122, %95
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @eq(i32 %127, i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @eq(i32 %132, i32 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 16
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %125
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 16
  %148 = icmp slt i32 %144, %147
  br label %149

149:                                              ; preds = %142, %125
  %150 = phi i1 [ false, %125 ], [ %148, %142 ]
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %153, i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 16
  %162 = icmp sge i32 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %149
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 16
  %169 = icmp slt i32 %165, %168
  br label %170

170:                                              ; preds = %163, %149
  %171 = phi i1 [ false, %149 ], [ %169, %163 ]
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ok(i32 %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %174, i32 %176)
  br label %178

178:                                              ; preds = %170, %33, %12
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @SetRect(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @EqualRect(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @test_change_message(i32, i32) #1

declare dso_local i32 @eq(i32, i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
