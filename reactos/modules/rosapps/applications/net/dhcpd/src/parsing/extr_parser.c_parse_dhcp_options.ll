; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/parsing/extr_parser.c_parse_dhcp_options.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/dhcpd/src/parsing/extr_parser.c_parse_dhcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"parse_dhcp_options [begin]!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No magic cookie! Aborting! \0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"parse_dhcp_options: END option found! [end]!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"parse_dhcp_options [end]!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_dhcp_options(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %449, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 312
  br i1 %25, label %26, label %450

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 99
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 130
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 83
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 99
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %453

57:                                               ; preds = %47, %40, %33, %26
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %446 [
    i32 158, label %65
    i32 173, label %68
    i32 152, label %81
    i32 132, label %431
    i32 133, label %431
    i32 161, label %431
    i32 195, label %431
    i32 181, label %431
    i32 197, label %431
    i32 180, label %431
    i32 187, label %431
    i32 148, label %431
    i32 200, label %431
    i32 175, label %431
    i32 194, label %431
    i32 139, label %431
    i32 147, label %431
    i32 191, label %431
    i32 184, label %431
    i32 162, label %431
    i32 154, label %431
    i32 177, label %431
    i32 196, label %431
    i32 157, label %431
    i32 156, label %431
    i32 186, label %431
    i32 203, label %431
    i32 199, label %431
    i32 155, label %431
    i32 178, label %431
    i32 151, label %431
    i32 145, label %431
    i32 142, label %431
    i32 135, label %431
    i32 202, label %431
    i32 192, label %431
    i32 138, label %431
    i32 136, label %431
    i32 137, label %431
    i32 167, label %431
    i32 164, label %431
    i32 160, label %431
    i32 130, label %431
    i32 170, label %431
    i32 171, label %431
    i32 169, label %431
    i32 168, label %431
    i32 128, label %431
    i32 129, label %431
    i32 159, label %431
    i32 144, label %431
    i32 174, label %431
    i32 176, label %431
    i32 149, label %431
    i32 150, label %431
    i32 131, label %431
    i32 166, label %431
    i32 165, label %431
    i32 134, label %431
    i32 201, label %431
    i32 172, label %431
    i32 143, label %431
    i32 153, label %431
    i32 163, label %431
    i32 188, label %431
    i32 190, label %431
    i32 183, label %431
    i32 140, label %431
    i32 141, label %431
    i32 198, label %431
    i32 193, label %443
  ]

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %449

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %6, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %449

81:                                               ; preds = %57
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %84, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %428, %81
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %429

98:                                               ; preds = %94
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %425 [
    i32 185, label %106
    i32 179, label %175
    i32 146, label %244
    i32 182, label %313
    i32 189, label %382
  ]

106:                                              ; preds = %98
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %7, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %428

175:                                              ; preds = %98
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %7, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %428

244:                                              ; preds = %98
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 2
  store i32 %246, i32* %7, align 4
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 8
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %7, align 4
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %297, 8
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %308
  store i32 %312, i32* %310, align 4
  br label %428

313:                                              ; preds = %98
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 2
  store i32 %315, i32* %7, align 4
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %7, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = shl i32 %330, 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 4
  store i32 %331, i32* %333, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %7, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = shl i32 %348, 8
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 4
  store i32 %349, i32* %351, align 8
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %7, align 4
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %362, %359
  store i32 %363, i32* %361, align 8
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = shl i32 %366, 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %7, align 4
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = add nsw i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %428

382:                                              ; preds = %98
  %383 = load i32, i32* %7, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %7, align 4
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %391, 1
  %393 = call i64 @malloc(i32 %392)
  %394 = inttoptr i64 %393 to i8*
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 5
  store i8* %394, i8** %396, align 8
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 5
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @strncpy(i8* %399, i32* %406, i32 %413)
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, 1
  %423 = load i32, i32* %7, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %7, align 4
  br label %425

425:                                              ; preds = %98, %382
  %426 = load i32, i32* %7, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %7, align 4
  br label %428

428:                                              ; preds = %425, %313, %244, %175, %106
  br label %94

429:                                              ; preds = %94
  %430 = load i32, i32* %7, align 4
  store i32 %430, i32* %6, align 4
  br label %449

431:                                              ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %432 = load i32, i32* %6, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %6, align 4
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %6, align 4
  %442 = add nsw i32 %441, %440
  store i32 %442, i32* %6, align 4
  br label %443

443:                                              ; preds = %57, %431
  %444 = load i32, i32* @stdout, align 4
  %445 = call i32 @fprintf(i32 %444, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %453

446:                                              ; preds = %57
  %447 = load i32, i32* %6, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %6, align 4
  br label %449

449:                                              ; preds = %446, %429, %68, %65
  br label %23

450:                                              ; preds = %23
  %451 = load i32, i32* @stdout, align 4
  %452 = call i32 @fprintf(i32 %451, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %453

453:                                              ; preds = %450, %443, %54
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
