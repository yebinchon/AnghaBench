; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@TOX_PORT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create Networking_Core\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to create DHT\00", align 1
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@LCLIENT_LIST = common dso_local global i32 0, align 4
@MAX_FRIEND_CLIENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Wrong number of added clients with existing ip_port\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Wrong number of added clients with existing public_key\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Wrong number of added clients\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_addto_lists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TOX_PORT_DEFAULT, align 4
  %12 = call i32* @new_networking(i32 %10, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ck_assert_msg(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.TYPE_16__* @new_DHT(i32* %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %4, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ck_assert_msg(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %24 = load i32, i32* @TOX_PORT_DEFAULT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %53, %1
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @LCLIENT_LIST, align 4
  %34 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %35 = call i32 @MAX(i32 %33, i32 %34)
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = mul nuw i64 4, %28
  %39 = trunc i64 %38 to i32
  %40 = call i32 @randombytes(i32* %30, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = bitcast %struct.TYPE_15__* %5 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i32 @addto_lists(%struct.TYPE_16__* %41, i64 %43, i32* %30)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = icmp eq i32 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ck_assert_msg(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %31

56:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LCLIENT_LIST, align 4
  %60 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %61 = call i32 @MAX(i32 %59, i32 %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = bitcast %struct.TYPE_15__* %5 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i32 @addto_lists(%struct.TYPE_16__* %67, i64 %69, i32* %30)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = icmp eq i32 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ck_assert_msg(i32 %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %57

82:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @LCLIENT_LIST, align 4
  %86 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %87 = call i32 @MAX(i32 %85, i32 %86)
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = mul nuw i64 4, %28
  %94 = trunc i64 %93 to i32
  %95 = call i32 @randombytes(i32* %30, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = bitcast %struct.TYPE_15__* %5 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = call i32 @addto_lists(%struct.TYPE_16__* %96, i64 %98, i32* %30)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = call i32 @ck_assert_msg(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %83

107:                                              ; preds = %83
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @LCLIENT_LIST, align 4
  %113 = call i32 @test_addto_lists_update(%struct.TYPE_16__* %108, i32 %111, i32 %112, %struct.TYPE_15__* %5)
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %132, %107
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %131 = call i32 @test_addto_lists_update(%struct.TYPE_16__* %121, i32 %129, i32 %130, %struct.TYPE_15__* %5)
  br label %132

132:                                              ; preds = %120
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %114

135:                                              ; preds = %114
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @LCLIENT_LIST, align 4
  %141 = call i32 @test_addto_lists_bad(%struct.TYPE_16__* %136, i32 %139, i32 %140, %struct.TYPE_15__* %5)
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %160, %135
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %159 = call i32 @test_addto_lists_bad(%struct.TYPE_16__* %149, i32 %157, i32 %158, %struct.TYPE_15__* %5)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %142

163:                                              ; preds = %142
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @LCLIENT_LIST, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @test_addto_lists_good(%struct.TYPE_16__* %164, i32 %167, i32 %168, %struct.TYPE_15__* %5, i32 %171)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %199, %163
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %173
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @test_addto_lists_good(%struct.TYPE_16__* %180, i32 %188, i32 %189, %struct.TYPE_15__* %5, i32 %197)
  br label %199

199:                                              ; preds = %179
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %173

202:                                              ; preds = %173
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = call i32 @kill_DHT(%struct.TYPE_16__* %203)
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @kill_networking(i32* %205)
  %207 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %207)
  ret void
}

declare dso_local i32* @new_networking(i32, i32) #1

declare dso_local i32 @ck_assert_msg(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @new_DHT(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @randombytes(i32*, i32) #1

declare dso_local i32 @addto_lists(%struct.TYPE_16__*, i64, i32*) #1

declare dso_local i32 @test_addto_lists_update(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @test_addto_lists_bad(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @test_addto_lists_good(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @kill_DHT(%struct.TYPE_16__*) #1

declare dso_local i32 @kill_networking(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
